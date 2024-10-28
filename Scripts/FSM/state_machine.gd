class_name StateMachine extends Node

@export var initial_state: State = null
@onready var state: State = (func get_initial_state() -> State:
	return initial_state if initial_state != null else get_child(0)
).call()

func _ready() -> void:
	for state_node: State in find_children("*", "State"):
		state_node.finished.connect(self._transition_to_next_state)
		
	await self.owner.ready
	self.state.enter("")

func _unhandled_input(event: InputEvent) -> void:
	self.state.handle_input(event)
	
func _process(delta: float) -> void:
	self.state.update(delta)
	
func _physics_process(delta: float) -> void:
	self.state.physics_update(delta)

func _transition_to_next_state(target_state_path: String, data: Dictionary = {}) -> void:
	if not has_node(target_state_path):
		printerr(self.owner.name + ": Trying to transition to state " + target_state_path + " but it does not exist.")
		return
		
	var previous_state_path := self.state.name
	self.state.exit()
	self.state = get_node(target_state_path)
	self.state.enter(previous_state_path, data)
