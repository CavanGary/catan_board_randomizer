extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().IRON_STACK_POS
	$iron1.set('translation', STARTING_POS)
	$iron1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$iron2.set('translation', STARTING_POS + Vector3(0, 0.125, 0))
	$iron2.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$iron3.set('translation', STARTING_POS + Vector3(0, 0.125 * 2, 0))
	$iron3.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$iron1.set('translation', Vector3(posArray[15].x, 0, posArray[15].y))
		$iron1.set('rotation_degrees', Vector3(0, 30, 0))
		$iron2.set('translation', Vector3(posArray[16].x, 0, posArray[16].y))
		$iron2.set('rotation_degrees', Vector3(0, 30, 0))
		$iron3.set('translation', Vector3(posArray[17].x, 0, posArray[17].y))
		$iron3.set('rotation_degrees', Vector3(0, 30, 0))
