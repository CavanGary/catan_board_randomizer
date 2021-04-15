extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	var STARTING_POS = get_parent().DESERT_STACK_POS
	$desert1.set('translation', STARTING_POS)
	$desert1.set('rotation_degrees', Vector3(0, get_parent().randomRotationValue(), 0))

func _process(delta):
	var parent = get_parent()
	if parent.DEBUG:
		var posArray = parent.generateRandBoardPos()
		$desert1.set('translation', Vector3(posArray[18].x, 0, posArray[18].y))
		$desert1.set('rotation_degrees', Vector3(0, 30, 0))
