extends Area2D

@onready var timer: Timer = $Timer
@onready var hurt: AudioStreamPlayer2D = $Hurt


func _on_body_entered(body):
	hurt.play()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
