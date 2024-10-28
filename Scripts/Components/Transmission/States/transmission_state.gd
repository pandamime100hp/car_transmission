class_name TransmissionState extends State

const DRIVE = "Drive"
const NEUTRAL = "Neutral"
const REVERSE = "Reverse"
const SHIFT = "Shift"

var transmission: Transmission

func _ready() -> void:
	await owner.ready
	self.transmission = owner as Transmission
	assert(self.transmission != null, "The TransmissionState state type must be used only in the transmission scene. It needs the owner to be a Transmission node.")
