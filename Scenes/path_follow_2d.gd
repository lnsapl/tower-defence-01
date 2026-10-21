extends PathFollow2D

# How fast the enemy walks along the path, in pixels per second.
@export var speed: float = 60.0

func _process(delta) -> void:
	# progress = how far along the path the enemy is (in pixels).
	# Adding to it every frame moves the enemy forward.
	progress += speed * delta
