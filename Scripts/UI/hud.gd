class_name HUD extends CanvasLayer

var current_gear = "N"
var gear_label: Label
var clutch_label: Label

func _ready() -> void:
	gear_label = $Gear
	clutch_label = $Clutch
