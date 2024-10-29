extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering REVERSE state.")
	
func physics_update(_delta: float) -> void:
	if Input.is_action_just_released("ui_up"):
		self.transmission.shifting = true
		self.transmission.current_gear += 1
		
	if Input.is_action_just_released("ui_down"):
		if self.transmission.current_gear != -1:
			self.transmission.shifting = true
			self.transmission.current_gear -= 1
		
	if self.transmission.current_gear == 0 and self.transmission.shifting and self.transmission.clutch.engaged:
		finished.emit(NEUTRAL)
	
	self.transmission.shifting = false

func exit() -> void:
	print(self.owner.name + ": Exiting REVERSE state.")
