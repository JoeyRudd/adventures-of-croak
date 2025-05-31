extends Camera2D

var shake_intensity = 5.0
var shake_duration = 0.2
var shake_time = 0.0

# flag to indicate if shaking is active
var is_shaking = false

func _process(delta):
	if is_shaking:
		shake_time -= delta
		if shake_time <= 0:
			is_shaking = false
			offset = Vector2()  # reset the offset to default
		else:
			# apply random shake
			offset = Vector2(
				randf_range(-shake_intensity, shake_intensity),
				randf_range(-shake_intensity, shake_intensity)
			)

func start_shake(intensity, duration):
	shake_intensity = intensity
	shake_duration = duration
	shake_time = duration
	is_shaking = true
