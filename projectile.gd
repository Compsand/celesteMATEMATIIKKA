extends Area2D

var lifetime = 600

func _process(delta: float) -> void:
	position += transform.x * delta * 60
	
	if overlaps_area($"../player/stupid"):
		get_tree().change_scene_to_file("res://scenes/space.tscn")
		print("hamburger cheezburger big mac whopper")

	if overlaps_area($"../ballkiller"):
		queue_free()
