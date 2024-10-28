class_name Transmission extends Node

@export var gears := 1
@export var current_gear := 0
@export var clutch: Clutch

var shifting: bool

func gears_limit() -> bool:
	return -1 <= self.current_gear and self.current_gear < self.gears
	
func is_shift_possible() -> bool:
	return self.gears_limit() and self.clutch.engaged
