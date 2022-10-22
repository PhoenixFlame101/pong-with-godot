extends Area2D


var death_count = 0

onready var _initial_pos = position

func _process(delta):
	global.ball_speed += delta * 2
	position += global.ball_speed * delta * global.ball_direction


func reset():
	if true: #if Input.is_action_just_pressed("ui_accept"):
		global.ball_direction = Vector2.LEFT
		position = _initial_pos
		global.ball_speed = global.DEFAULT_SPEED
		global.score = 0
