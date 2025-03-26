extends StaticBody3D

@onready var character = get_parent().get_node("HoleCharacter")


func _physics_process(delta: float) -> void:
	# follow sibling Character around. Godot doesn't like
	# nested collision bodies so this has to be done manually
	global_transform.origin = character.global_transform.origin
