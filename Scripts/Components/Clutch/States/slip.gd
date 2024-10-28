extends ClutchState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.name + ": Entering SLIP state.")
	
func physics_update(_delta: float) -> void:
	# Wear out the clutch overtime, reducing the friction.
	
	if Input.is_action_just_pressed("clutch"):
		finished.emit(self.ENGAGE)
	elif Input.is_action_just_released("clutch"):
		finished.emit(self.DISENGAGE)
	
func exit() -> void:
	print(self.name + ": Exiting SLIP state.")
