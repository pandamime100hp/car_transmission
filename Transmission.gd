class_name TransmissionState

enum { 
	IN_GEAR, 
	REVERSE, 
	NEUTRAL 
}

var current_state = TransmissionState.NEUTRAL
var gear = 0

func enter_state(state):
	match state:
		TransmissionState.REVERSE:
			print("Entering REVERSE state")
		TransmissionState.NEUTRAL:
			print("Entering NEUTRAL state")
		TransmissionState.IN_GEAR:
			print("Entering IN_GEAR state")

func change(new_state):
	match current_state:
		TransmissionState.REVERSE:
			print("Exiting REVERSE state")
		TransmissionState.NEUTRAL:
			print("Exiting NEUTRAL state")
		TransmissionState.IN_GEAR:
			print("Exiting IN_GEAR state")
		
	current_state = new_state
	enter_state(current_state)
	
func update():
	print("Current state: ", current_state)
	print("Current speed: ", gear)
