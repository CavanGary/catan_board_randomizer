extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().WHEAT_STACK_POS
	$wheat1.set('translation', STARTING_POS)
	$wheat1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wheat2.set('translation', STARTING_POS + Vector3(0, 0.125, 0))
	$wheat2.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wheat3.set('translation', STARTING_POS + Vector3(0, 0.125 * 2, 0))
	$wheat3.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$wheat4.set('translation', STARTING_POS + Vector3(0, 0.125 * 3, 0))
	$wheat4.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$wheat1.set('translation', Vector3(posArray[0].x, 0, posArray[0].y))
		$wheat1.set('rotation_degrees', Vector3(0, 30, 0))
		$wheat2.set('translation', Vector3(posArray[1].x, 0, posArray[1].y))
		$wheat2.set('rotation_degrees', Vector3(0, 30, 0))
		$wheat3.set('translation', Vector3(posArray[2].x, 0, posArray[2].y))
		$wheat3.set('rotation_degrees', Vector3(0, 30, 0))
		$wheat4.set('translation', Vector3(posArray[3].x, 0, posArray[3].y))
		$wheat4.set('rotation_degrees', Vector3(0, 30, 0))
