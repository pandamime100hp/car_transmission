class_name Clutch extends "res://Clutch/ClutchState.gd"

var state

func _init() -> void:
	self.state = ClutchState.DISENGAGED
	self.update()

func engage():
	self.state = ClutchState.ENGAGED
	self.update()
	
func disengage():
	self.state = ClutchState.DISENGAGED
	self.update()
	
func update():
	print("Current clutch state: ", self.state)
