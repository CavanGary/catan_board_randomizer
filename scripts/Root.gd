extends Spatial

const step = 16.0 / 5.0
const WHEAT_STACK_POS = Vector3(-8 + step*0, 0, 8.5)
const SHEEP_STACK_POS = Vector3(-8 + step*1, 0, 8.5)
const WOOD_STACK_POS = Vector3(-8 + step*2, 0, 8.5)
const BRICK_STACK_POS = Vector3(-8 + step*3, 0, 8.5)
const IRON_STACK_POS = Vector3(-8 + step*4, 0, 8.5)
const DESERT_STACK_POS = Vector3(-8 + step*5, 0, 8.5)
var DEBUG = false

const LEVEL_1_HEIGHT = -3
const LEVEL_2_HEIGHT = -1.5
const LEVEL_3_HEIGHT = 0
const LEVEL_4_HEIGHT = 1.5
const LEVEL_5_HEIGHT = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		DEBUG = true

func randomRotationValue():
	return rand_range(0, 90)

func generateRandBoardPos():
	return [Vector2(sqrt(3)*-1, LEVEL_1_HEIGHT), Vector2(0, LEVEL_1_HEIGHT), Vector2(sqrt(3), LEVEL_1_HEIGHT),
		Vector2(3*sqrt(3.0)/-2.0, LEVEL_2_HEIGHT), Vector2(sqrt(3.0)/-2.0, LEVEL_2_HEIGHT), Vector2(3*sqrt(3.0)/2.0, LEVEL_2_HEIGHT), Vector2(sqrt(3.0)/2.0, LEVEL_2_HEIGHT),
		Vector2(sqrt(3)*-2, LEVEL_3_HEIGHT), Vector2(sqrt(3)*-1, LEVEL_3_HEIGHT), Vector2(0, LEVEL_3_HEIGHT), Vector2(sqrt(3), LEVEL_3_HEIGHT), Vector2(sqrt(3)*2, LEVEL_3_HEIGHT),
		Vector2(3*sqrt(3.0)/-2.0, LEVEL_4_HEIGHT), Vector2(sqrt(3.0)/-2.0, LEVEL_4_HEIGHT), Vector2(sqrt(3.0)/2.0, LEVEL_4_HEIGHT), Vector2(3*sqrt(3.0)/2.0, LEVEL_4_HEIGHT),
		Vector2(sqrt(3)*-1, LEVEL_5_HEIGHT), Vector2(0, LEVEL_5_HEIGHT), Vector2(sqrt(3), LEVEL_5_HEIGHT)]
