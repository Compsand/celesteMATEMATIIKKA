extends CharacterBody2D


var SPEED = 300.0

# do the new input shot right , when second button is pressed
# also do the new input for left we make workaround


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		if left : velocity.x = -300 
		else: velocity.x = 300
		
		move_and_slide()
