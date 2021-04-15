extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().SHEEP_STACK_POS
	$sheep1.set('translation', STARTING_POS)
	$sheep1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$sheep2.set('translation', STARTING_POS + Vector3(0, 0.125, 0))
	$sheep2.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$sheep3.set('translation', STARTING_POS + Vector3(0, 0.125 * 2, 0))
	$sheep3.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))
	$sheep4.set('translation', STARTING_POS + Vector3(0, 0.125 * 3, 0))
	$sheep4.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$sheep1.set('translation', Vector3(posArray[4].x, 0, posArray[4].y))
		$sheep1.set('rotation_degrees', Vector3(0, 30, 0))
		$sheep2.set('translation', Vector3(posArray[5].x, 0, posArray[5].y))
		$sheep2.set('rotation_degrees', Vector3(0, 30, 0))
		$sheep3.set('translation', Vector3(posArray[6].x, 0, posArray[6].y))
		$sheep3.set('rotation_degrees', Vector3(0, 30, 0))
		$sheep4.set('translation', Vector3(posArray[7].x, 0, posArray[7].y))
		$sheep4.set('rotation_degrees', Vector3(0, 30, 0))
