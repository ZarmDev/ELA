extends KinematicBody2D

onready var sprite = $Sprite
var pos = null

var speed = 0
var acceleration_x = 0
var acceleration_y = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
	pos = global_position
	if Input.is_action_pressed("ui_right"):
		acceleration_x += 0.1
	elif Input.is_action_pressed("ui_left"):
		acceleration_x -= 0.1
	if Input.is_action_pressed("ui_down"):
		acceleration_y += 0.1
	elif Input.is_action_pressed("ui_up"):
		acceleration_y -= 0.1
	if acceleration_x > 4.9:
		acceleration_x = 5
	if acceleration_y > 4.9:
		acceleration_y = 5
	self.global_position.x += acceleration_x
	self.global_position.y += acceleration_y
