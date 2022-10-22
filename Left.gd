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
	var y_pos = (float(global.ball_direction[1]) / (float(_screen_size_y) *0.5))- 1
	#print(global.ball_pos)
	#print(Vector2.LEFT)
	#print((Vector2.LEFT * 2).x)
	#print(global.ball_pos[1])
	position.y = global.ball_pos[1]

func _on_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
		#area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		global.ball_direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
		global.score += 1
		#global.ball_direction = direction
