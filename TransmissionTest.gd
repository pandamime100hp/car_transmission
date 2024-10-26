extends Node

var ManualTransmission = preload("res://Transmission/ManualTransmission.gd")
var transmission
var clutch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.transmission = ManualTransmission.new(6)
	self.clutch = Clutch.new()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	# Listen for the clutch to be engaged
	if Input.is_action_just_pressed("clutch"):
		self.clutch.engage()
	# Listen for the clutch to be disengaged
	if Input.is_action_just_released("clutch"):
		self.clutch.disengage()
		
	if Input.is_action_just_released("ui_up"):
		self.transmission.shift_up(self.clutch)
	if Input.is_action_just_released("ui_down"):
		self.transmission.shift_down(self.clutch)
		
