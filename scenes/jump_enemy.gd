extends CharacterBody2D
 
func _process(_delta: float) -> void: movement()

func movement():
	velocity.x = -150
	if is_on_wall() and velocity.x == -150:
		velocity.x = 150
	elif is_on_wall() and velocity.x == 150:
		velocity.x = -150
	if is_on_floor_only():
		velocity.y == 100
		
	get_gravity()
	move_and_slide()
