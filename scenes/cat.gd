extends Sprite2D

var tail = 40
var fly = 0

func _physics_process(delta: float) -> void:
	tail -= 1
	if tail < 1:
		if frame_coords.x == 0:
			frame_coords.x = 1
		else:
			frame_coords.x = 0
		tail = 40

	if $"../player".position.x < -195 or fly == 1:
		fly = 1
		position.y -= 4
		if position.y < -400:
			queue_free()
