extends ColorRect

onready var label = $Label
onready var colorRect = self

var textPiece = ''

func text(value):
	colorRect.visible = true
	textPiece = ''
	for i in range(len(value)):
		textPiece += value[i]
		label.text = textPiece
		yield(get_tree().create_timer(0.05), "timeout")
	yield(get_tree().create_timer(5.0), "timeout")
	colorRect.visible = false


func _ready():
	colorRect.visible = false
