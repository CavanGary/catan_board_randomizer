extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().WOOD_STACK_POS
	$wood1.set('translation', STARTING_POS)
	$wood1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wood2.set('translation', STARTING_POS + Vector3(0, 0.125, 0))
	$wood2.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wood3.set('translation', STARTING_POS + Vector3(0, 0.125 * 2, 0))
	$wood3.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wood4.set('translation', STARTING_POS + Vector3(0, 0.125 * 3, 0))
	$wood4.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$wood1.set('translation', Vector3(posArray[8].x, 0, posArray[8].y))
		$wood1.set('rotation_degrees', Vector3(0, 30, 0))
		$wood2.set('translation', Vector3(posArray[9].x, 0, posArray[9].y))
		$wood2.set('rotation_degrees', Vector3(0, 30, 0))
		$wood3.set('translation', Vector3(posArray[10].x, 0, posArray[10].y))
		$wood3.set('rotation_degrees', Vector3(0, 30, 0))
		$wood4.set('translation', Vector3(posArray[11].x, 0, posArray[11].y))
		$wood4.set('rotation_degrees', Vector3(0, 30, 0))
