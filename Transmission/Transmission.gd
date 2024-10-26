class_name Transmission

var _current_state = TransmissionState.NEUTRAL
var _gear = 0

func change_state(new_state):
	if new_state != self._current_state:
		self._current_state = new_state
		
		match self._current_state:
			TransmissionState.REVERSE:
				print("Changing to REVERSE state")
			TransmissionState.NEUTRAL:
				print("Changing to NEUTRAL state")
			TransmissionState.IN_GEAR:
				print("Changing to IN_GEAR state")
	
func update():
	pass
