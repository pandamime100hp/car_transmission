class_name Clutch extends Node

@export var condition := 1
@export var weight := 1000 # Weight in Grams
@export var friction := 1

var hud: CanvasLayer
var engaged = false

func _on_hud_ready() -> void:
	self.hud = $"../../HUD"
	self.hud.clutch_label.text = "OFF"
