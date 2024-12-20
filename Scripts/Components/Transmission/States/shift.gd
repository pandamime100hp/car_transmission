extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering SHIFT state.")
	
func physics_update(_delta: float) -> void:
	if -1 <= self.transmission.current_gear and self.transmission.current_gear <= self.transmission.gears and self.transmission.clutch.engaged:
		if self.transmission.current_gear > 0:
			self.finished.emit(DRIVE)
		elif self.transmission.current_gear < 0:
			self.finished.emit(REVERSE)
		elif self.transmission.current_gear == 0:
			self.finished.emit(NEUTRAL)

func exit() -> void:
	print(self.owner.name + ": Exiting SHIFT state.")
