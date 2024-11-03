class_name Transmission extends Node

@export var gears := 1

var hud: CanvasLayer
var clutch: Clutch
var current_gear = 0

func gears_limit() -> bool:
	var k = -1 <= self.current_gear and self.current_gear < self.gears
	print(k)
	return k
	
func is_shift_possible() -> bool:
	return self.gears_limit() and self.clutch.engaged

func _on_hud_ready() -> void:
	self.hud = $"../../HUD"
	self.hud.gear_label.text = "N"

func _on_clutch_ready() -> void:
	self.clutch = $"../Clutch"
