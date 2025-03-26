extends CharacterBody3D
@export var speed = 10

var target_vel = Vector3.ZERO;


func _physics_process(_delta: float) -> void:
	var dir = Vector2(Input.get_axis("right", "left"), Input.get_axis("backward", "forward")).normalized();
	# Setting the basis property will affect the rotation of the node.
	target_vel.x = dir.x * speed
	target_vel.z = dir.y * speed

	# Moving the Character
	velocity = target_vel
	move_and_slide()
