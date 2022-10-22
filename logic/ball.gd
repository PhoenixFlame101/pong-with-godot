extends Area2D

export var DEFAULT_SPEED = 500

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT
var death_count = 0

onready var _initial_pos = position

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction


func reset():
	if true: #if Input.is_action_just_pressed("ui_accept"):
		if direction == Vector2.LEFT:
			direction = Vector2.RIGHT 
		elif direction == Vector2.RIGHT:
			direction = Vector2.LEFT 
		position = _initial_pos
		_speed = DEFAULT_SPEED
		global.score = 0
