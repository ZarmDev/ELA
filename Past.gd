extends Node2D


onready var window = $CanvasLayer/WindowDialog
onready var popup1 = $CanvasLayer/PopupDialog
onready var popup2 = $CanvasLayer/PopupDialog2
onready var confirm = $CanvasLayer/ConfirmationDialog
onready var pane = $CanvasLayer/PopupPanel


func _ready():
	yield(get_tree().create_timer(2.0), "timeout")
	window.popup()
	yield(get_tree().create_timer(5.0), "timeout")
	popup1.popup()
	yield(get_tree().create_timer(5.0), "timeout")
	popup2.popup()
	yield(get_tree().create_timer(5.0), "timeout")
	confirm.popup()
	yield(get_tree().create_timer(5.0), "timeout")
	pane.popup()
