extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().BRICK_STACK_POS
	$brick1.set('translation', STARTING_POS)
	$brick1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$brick2.set('translation', STARTING_POS + Vector3(0, 0.125, 0))
	$brick2.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$brick3.set('translation', STARTING_POS + Vector3(0, 0.125 * 2, 0))
	$brick3.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$brick1.set('translation', Vector3(posArray[12].x, 0, posArray[12].y))
		$brick1.set('rotation_degrees', Vector3(0, 30, 0))
		$brick2.set('translation', Vector3(posArray[13].x, 0, posArray[13].y))
		$brick2.set('rotation_degrees', Vector3(0, 30, 0))
		$brick3.set('translation', Vector3(posArray[14].x, 0, posArray[14].y))
		$brick3.set('rotation_degrees', Vector3(0, 30, 0))
