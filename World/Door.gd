extends Node2D

var entered = false
onready var area2d = $Area2D

onready var collide = $CollisionShape2D
onready var animatedSprite = $AnimatedSprite2


func _process(delta):
	if entered == true:
		collide.disabled = true
	else:
		collide.disabled = false


func _on_Area2D_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name != 'Door':
		print(body.name)
		animatedSprite.playing = true
		yield(get_tree().create_timer(0.8),"timeout")
		animatedSprite.playing = false
		entered = true


func _on_Area2D_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	if body.name != 'Door':
		print('FJUIWFUWFJU')
		yield(get_tree().create_timer(1.0),"timeout")
		entered = false
