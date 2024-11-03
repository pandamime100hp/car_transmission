extends ClutchState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering DISENGAGE state.")
	
func physics_update(_delta: float) -> void:
	self.clutch.engaged = false
	
	if Input.is_action_just_pressed("clutch"):
		finished.emit(self.ENGAGE)
		
func update(_delta: float) -> void:
	self.clutch.hud.clutch_label.text = "OFF"

func exit() -> void:
	print(self.owner.name + ": Exiting DISENGAGE state.")
