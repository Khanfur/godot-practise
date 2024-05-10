extends Node

var score = 0

@onready var score_label = $score_label

func _on_game_ready():
	score_label.text = "You collected 0 coins!"

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins!"


