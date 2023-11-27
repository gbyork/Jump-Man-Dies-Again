extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	if Input.is_action_just_pressed("Right"):
		animated_sprite.play("Run")
		
