extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	# ANIMATION
	print(self.owner.name + ": Entering DRIVE state. Current gear: " + str(self.transmission.current_gear))
	
func physics_update(_delta: float) -> void:
	if Input.is_action_just_released("ui_up"):
		if self.transmission.current_gear < self.transmission.gears and self.transmission.clutch.engaged:
			self.transmission.current_gear += 1
			self.finished.emit(SHIFT)
		
	if Input.is_action_just_released("ui_down"):
		if self.transmission.current_gear <= self.transmission.gears and self.transmission.clutch.engaged:
			self.transmission.current_gear -= 1
			self.finished.emit(SHIFT)
			
func update(_delta: float) -> void:
	self.transmission.hud.gear_label.text = str(self.transmission.current_gear)
		
func exit() -> void:
	# ANIMATION
	print(self.owner.name + ": Exiting DRIVE state.")
