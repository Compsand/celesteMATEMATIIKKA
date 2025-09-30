extends CharacterBody2D
 
func _process(_delta: float) -> void: movement()

func movement():
	velocity.x = -50
	if is_on_wall() and velocity.x == -50:
		velocity.x = 50
		print()
	elif is_on_wall() and velocity.x == 50:
		velocity.x = -50
	if is_on_floor_only():
		velocity.y = -50
		
	get_gravity()
	move_and_slide()




func _on_kill_zone_area_entered(area: Area2D) -> void:
	print("womp")
	$"../sord".play()
	queue_free()
	
