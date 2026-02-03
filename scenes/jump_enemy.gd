extends CharacterBody2D

var go = true
var goTimer = 100


func leftMovementJ():
	if go == true : 
		velocity.x = 150
	else: 
		velocity.x = -150
		
	if is_on_wall() and goTimer < 0:
		if go == true : 
			go = false
			goTimer = 10
		else: 
			go = true
			goTimer = 10
	
	goTimer -= 1
	move_and_slide()
	print(get_gravity())

	if is_on_floor():
		velocity.y = -150
		print("on flor")
	else:
		velocity.y += get_gravity().y/100
		print("in air")
		
func _physics_process(_delta: float) -> void: leftMovementJ()



func _on_kill_zone_area_entered(area: Area2D) -> void:
	print("womp")
	$"../sord".play()
	queue_free()
	
