extends RigidBody2D

var force = 800

func	_ready():
	var additional_result = add(33,36)
	print(additional_result)
	
	
func _physics_process(delta):
	player_movement()

func player_movement():
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force, 0))
		
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force, 0))

	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -force))

	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, force))
		
func add(argument1, argument2):
	return argument1 + argument2
	
	
	#var message = "Hell3o"
	#if message == "Hello":
		#print("Hi there! You said Hello!")
	#elif message == "Bye":
		#print("GoodBy!")
	#elif message == "Thanks":
		#print("Thank you!")
	#else:
		#print("Invalid Message!!!")
#
#func _process(delta):
	##apply_force(Vector2(25, 0))
	#pass


#var number := 1.0  # Starting acceleration factor.

## Called every physics frame (fixed frame rate).
#func _physics_process(delta: float) -> void:
	#accelerate(delta)
#
#
#func accelerate(delta):
	#if number < 100:  # Ensure acceleration stops at the limit.
		#apply_impulse(Vector2(number, 0))  # Apply impulse at the center of mass.
		#number += 0.1 * delta  # Increment the acceleration factor gradually.
		#print(number)  # Debug: Print the current acceleration factor.
 #
