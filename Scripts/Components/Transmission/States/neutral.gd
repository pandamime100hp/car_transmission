extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering NEUTRAL state.")
	
func physics_update(_delta: float) -> void:
	self.transmission.shifting = false
	if self.transmission.is_shift_possible():
		if Input.is_action_just_released("ui_up"):
			self.transmission.shifting = true
			self.transmission.current_gear += 1
			
		if Input.is_action_just_released("ui_down"):
			self.transmission.shifting = true
			self.transmission.current_gear -= 1
			
		if self.transmission.current_gear > 0 and self.transmission.shifting and self.transmission.clutch.engaged:
			self.transmission.shifting = false
			finished.emit(DRIVE)
		elif self.transmission.current_gear < 0 and self.transmission.shifting and self.transmission.clutch.engaged:
			self.transmission.shifting = false
			finished.emit(REVERSE)
		
	self.transmission.shifting = false
		
func exit() -> void:
	print(self.owner.name + ": Exiting NEUTRAL state.")
