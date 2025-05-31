extends Control

@onready var play_again: Button = $"VBoxContainer/Play Again"
@onready var grade: Label = $Grade

func _on_ready() -> void:
	update_grade()

func _on_play_again_pressed() -> void:
	Score.dragonfies_counter = 0
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
func update_grade() -> void:
	if(Score.dragonfies_counter >= 20):
		grade.text = "WOW! YOUR GRADE IS AN A+"
	elif(Score.dragonfies_counter >= 16):
		grade.text = "CONGRATS YOUR GRADE IS AN A"
	elif(Score.dragonfies_counter >= 14):
		grade.text = "You got a B"
	elif(Score.dragonfies_counter >= 12):
		grade.text = "Meh, your grade is a C"
	elif(Score.dragonfies_counter >= 10):
		grade.text = "Yikes, your grade is a D"
	else:
		grade.text = "Your grade is an F, dissapointing"
