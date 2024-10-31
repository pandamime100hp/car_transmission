extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering DRIVE state. Current gear: " + str(self.transmission.current_gear))
	
func physics_update(_delta: float) -> void:
	self.transmission.shifting = false
	if Input.is_action_just_released("ui_up"):
		if self.transmission.current_gear != self.transmission.gears:
			self.transmission.shifting = true
			self.transmission.current_gear += 1
		
	if Input.is_action_just_released("ui_down"):
		self.transmission.shifting = true
		self.transmission.current_gear -= 1
		
	if self.transmission.current_gear != 0 and self.transmission.shifting and self.transmission.clutch.engaged:
		self.transmission.shifting = false
		finished.emit(SHIFT)
	elif self.transmission.current_gear == 0 and self.transmission.shifting and self.transmission.clutch.engaged:
		self.transmission.shifting = false
		finished.emit(NEUTRAL)
	
	self.transmission.shifting = false
		
func exit() -> void:
	print(self.owner.name + ": Exiting DRIVE state.")
