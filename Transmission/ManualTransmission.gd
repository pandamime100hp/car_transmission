class_name ManualTransmission extends "res://Transmission/Transmission.gd"

var max_gears := 0

func _init(max_gears: int) -> void:
	self.max_gears = max_gears
	self.update()

func shift_up(clutch: Clutch):
	"""
	Change gear up by 1.
	
	Args:
		clutch: Clutch - clutch instance to see whether clutch is engaged or not
	"""
	if self._gear != self.max_gears:
		if clutch.state == ClutchState.ENGAGED:
			self._gear += 1
			self.update()
	
func shift_down(clutch: Clutch):
	"""
	Change gear down by 1.
	
	Args:
		clutch: Clutch - clutch instance to see whether clutch is engaged or not
	"""
	if self._gear != -1:
		if clutch.state == ClutchState.ENGAGED:
			self._gear -= 1
			update()
		
func shift_gear(clutch: ClutchState, gear: int):
	"""
	Change to a specific gear.
	
	Args:
		clutch: Clutch - clutch instance to see whether clutch is engaged or not
		gear: int - input gear ( NOTE: -1 is the reverse gear. )
	"""
	if -1 > gear and gear < self.max_gears + 1:
		if clutch.state == ClutchState.ENGAGED:
			self._gear = gear
			self.update() 

func update():
	if self._gear > 0:
		self.change_state(TransmissionState.IN_GEAR)
	elif self._gear < 0:
		self.change_state(TransmissionState.REVERSE)
	else:
		self.change_state(TransmissionState.NEUTRAL)
		
	print("Current transmission state: ", self._current_state)
	print("Current transmission gear: ", self._gear)
