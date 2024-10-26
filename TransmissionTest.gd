extends Node

var transmission


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	transmission = ManualTransmission.create(6)
	transmission.update()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("ui_up") and transmission.gear != transmission.max_gears:
		transmission.change_up()
		transmission.update()
	if Input.is_action_just_released("ui_down") and transmission.gear != -1:
		transmission.change_down()
		transmission.update()
