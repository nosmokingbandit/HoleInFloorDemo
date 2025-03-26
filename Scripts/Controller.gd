extends RigidBody3D


func _integrate_forces(state):
	var x = Input.get_axis("left", "right");
	
	state.apply_force(x * 100);
