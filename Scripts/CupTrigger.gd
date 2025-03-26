extends Area3D

const consts = preload("res://Scripts/consts.gd")

func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("Collectible") and body is RigidBody3D:
		body.set_collision_mask_value(consts.LayerMask.StaticGeometry, false)


func _on_body_exited(body: Node3D) -> void:
	if body.is_in_group("Collectible") and body is RigidBody3D:
		body.set_collision_mask_value(consts.LayerMask.StaticGeometry, true)
