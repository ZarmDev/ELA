extends Area2D

onready var colrRect = get_parent().get_node("CanvasLayer/ColorRect")




func _on_Fog_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	colrRect.text("You are in the fog.")
