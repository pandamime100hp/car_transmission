class_name ClutchState extends State

const ENGAGE = "Engage"
const DISENGAGE = "Disengage"
const SLIP = "Slip"

var clutch: Clutch

func _ready() -> void:
	await owner.ready
	self.clutch = owner as Clutch
	assert(self.clutch != null, "The ClutchState state type must be used only in the clutch scene. It needs the owner to be a Clutch node.")
