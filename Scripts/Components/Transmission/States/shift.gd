extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering SHIFT state.")
	
func physics_update(_delta: float) -> void:
	if Input.is_action_just_released("ui_up"):
		self.transmission.current_gear += 1
		
	if Input.is_action_just_released("ui_down"):
		if self.transmission.current_gear != -1:
			self.transmission.current_gear -= 1
		
	if self.transmission.current_gear == 0 and self.transmission.clutch.engaged:
		finished.emit(NEUTRAL)

func exit() -> void:
	print(self.owner.name + ": Exiting SHIFT state.")
