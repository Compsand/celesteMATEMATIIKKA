extends CharacterBody2D


var SPEED = 300.0

# do the new input shot right , when second button is pressed
# also do the new input for left we make workaround
var EVILMODE = 0

func _physics_process(delta: float) -> void:
	
	
	var left = get_node("../player/Ninja").flip_h
	
	rotation += 1
	
	if Input.is_action_just_pressed("shoot"):
		if left : velocity.x = -300 
		else: velocity.x = 300
		position = get_node("../player").position
	
	move_and_slide()
	
	if is_on_wall():
		EVILMODE += 1
	elif EVILMODE > 5:
		position.y = 1000
		EVILMODE = 0
