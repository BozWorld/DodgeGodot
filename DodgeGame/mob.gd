extends RigidBody2D

export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Maximum speed range.

func _ready():
	var mob_types = $MobSprite.frames.get_animation_names()
	$MobSprite.animation = mob_types[randi() % mob_types.size()]
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
