extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _screen_size_y = get_viewport_rect().size.y
onready var _screen_size_x = get_viewport_rect().size.x
var n
var _up
var _down
var _ball_dir
var body_ball
var body_ai
const MOVE_SPEED = 255


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	n = String(name).to_lower()
	_up = n + "_move_up"
	_down = n + "_move_down"  
	if n == "left":
		_ball_dir = 1
	else:
		_ball_dir = -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var x_pos = (global.ball_direction[0] / _screen_size_x)*2 - 1
	var y_pos = (float(global.ball_direction[1]) / (float(_screen_size_y) *0.5))- 1
	#print("BALLY: " + String(global.ball_direction[1]) + " SCREENY: " + String(_screen_size_y) 
	#+ " A/B: " + String((float(global.ball_direction[1]) / float((_screen_size_y *0.5)))))
	#print(" FLOAT BALLY: " + String(float(global.ball_direction[1])) + " SCREENFLOAT: " + String(float(_screen_size_y)))
	#print(y_pos)
	print(global.ball_pos)
	print(Vector2.LEFT)
	print((Vector2.LEFT * 2).x)
	print(global.ball_pos[1])
	position.y = global.ball_pos[1]
	#position.y = clamp(position.y + 0 * MOVE_SPEED * delta, 16, _screen_size_y - 16)

func _on_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
		#area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		global.ball_direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		global.score += 1
		#global.ball_direction = direction
