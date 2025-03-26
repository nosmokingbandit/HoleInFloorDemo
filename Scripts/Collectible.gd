extends RigidBody3D

@onready var og_transform = global_transform;


func respawn():
	await get_tree().create_timer(0.5).timeout
	global_transform = og_transform
	linear_velocity = Vector3.ZERO
	angular_velocity = Vector3.ZERO
	rotation = Vector3.ZERO
