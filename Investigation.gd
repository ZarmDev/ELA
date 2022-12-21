extends Node2D

# This guy is a trickster.
# he tricked people into coming into his house.
# Then he fooled them into helping him in his expirments.
# He wanted to make a cure for science.
# But, he used inncoents

var karmaRangeLow = [['How are you?', 'Welcome to the interview.'], ['Did you kill them.', 'Why are you in here?'], ['So you killed them. How?', 'A bad person. You are a monster.'], ['You tricked the 3 people. You made them jump... For Fun???', 'You tricked them all. Deceived them as if you were the good guy.'], ['You were laughing as you hurt them.', 'You watched them suffer. What kind of person are you emobied in.'], ['Did you enjoy it.', 'Was it the urges?'], ['I hate your smile you had.', 'Did you feel remorse.'], ['Was it because of her...', "It was her wasn't it?"]]
var ans1 = [['Good.', 'Hello.'], ["I'm sorry", 'Why. Because I was a bad person.'], ['...I didnt want to, it was them.', 'They told me to. .it....'], ['I did.', "You don't know..."], ['It was funny. Then.', 'Just like you said.'], ['How do you know. I mean. What.', 'Yes.'], ['Me too.', 'No.'], ['*(!((@)))', '12kpo4ko124ok']]
var karmaRangeMedium = [['...', 'Hello.'], ['Course not.', 'Friend? I never would be a friend with a murderer.']]
var ans2 = [['Giving me the silent treatment?', 'Hello, my friend.'], ['So what do you want?', "Huh."]]
var karmaRangeHigh = [['Your insane.', 'Why did you even try to get a interview.'], ['What did you do to the 3 victims.', 'How did you kill them.']]
var ans3 = [['I know.', '...!!!', 'Why are you here. Leave then.']]


var karma = 0

var buttonText = null
var buttonText2 = null

onready var textureButton = $TextureButton
onready var textureButton2 = $TextureButton2
onready var textureButtonText = textureButton.get_node("Label")
onready var textureButtonText2 = textureButton2.get_node("Label")
onready var colorRect = $CanvasLayer/ColorRect

func _ready():
	textureButtonText.text = karmaRangeLow[0][0]
	textureButtonText2.text = karmaRangeLow[0][1]

var questionNum = 0
var questionNum2 = 0

func getKarma(buttonPressed):
	if questionNum == 7:
		colorRect.text("I cant do the interview.")
		yield(get_tree().create_timer(2.0), "timeout")
		get_tree().change_scene("res://Past.tscn")
		return false
	questionNum += 1
	var questionName = null
	var answer = null
	if karma >= 0 and karma < 4:
		questionName = karmaRangeLow[questionNum]
		answer = ans1[questionNum2]
	elif karma >= 4 and karma < 8:
		questionName = karmaRangeMedium[questionNum]
		answer = ans2[questionNum2]
	else:
		questionName = karmaRangeHigh[questionNum]
		answer = ans3[questionNum2]
	if buttonPressed == false:
		colorRect.text(answer[0])
		if karma >= 1:
			#karma -= 1
			pass
	else:
		colorRect.text(answer[1])
		#karma += 1
	textureButtonText.text = questionName[0]
	textureButtonText2.text = questionName[1]
	questionNum2 += 1

func _on_TextureButton_pressed():
	getKarma(false)


func _on_TextureButton2_pressed():
	getKarma(true)
