class_name ManualTransmission extends "res://Transmission.gd"

var max_gears := 0

static func create(max_gears: int) -> ManualTransmission:
	var instance = ManualTransmission.new()
	instance.max_gears = max_gears
	return instance

func change_up():
	if gear != max_gears:
		gear += 1
	
func change_down():
	if gear != -1:
		gear -= 1

func update():
	super.update()
	
	if gear > 0:
		change(TransmissionState.IN_GEAR)
	elif gear < 0:
		change(TransmissionState.REVERSE)
	else:
		change(TransmissionState.NEUTRAL)
