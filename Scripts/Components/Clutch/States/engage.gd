extends ClutchState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering ENGAGE state.")
	
func physics_update(_delta: float) -> void:
	self.clutch.engaged = true
	
	if Input.is_action_just_released("clutch"):
		finished.emit(self.DISENGAGE)
		
func update(_delta: float) -> void:
	self.clutch.hud.clutch_label.text = "ON"
	
func exit() -> void:
	print(self.owner.name + ": Exiting ENGAGE state.")
