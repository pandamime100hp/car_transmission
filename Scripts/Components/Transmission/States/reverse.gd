extends TransmissionState

func enter(previous_state_path: String, data := {}) -> void:
	print(self.owner.name + ": Entering REVERSE state.")
	
func physics_update(_delta: float) -> void:
	if Input.is_action_just_released("ui_up"):
		if self.transmission.gears_limit() and self.transmission.clutch.engaged:
			self.transmission.current_gear += 1
			self.finished.emit(SHIFT)
			
func update(_delta: float) -> void:
	self.transmission.hud.gear_label.text = "R"

func exit() -> void:
	print(self.owner.name + ": Exiting REVERSE state.")
