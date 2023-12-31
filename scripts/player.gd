extends CharacterBody2D

@export var gravity = 400
@export var speed = 150
@export var jump_force = 200
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	if is_on_floor()==false:
		velocity.y += gravity * delta
	if velocity.y > 500:
		velocity.y = 500
	if Input.is_action_just_pressed("Up") && is_on_floor():
		velocity.y = -jump_force
	
	var direction = Input.get_axis("Left", "Right")

	velocity.x = direction * speed
	move_and_slide()
