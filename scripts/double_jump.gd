extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if(body.name == "Frog"):
		print("yo")
		animation_player.play("pickup")
