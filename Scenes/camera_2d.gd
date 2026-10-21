extends Camera2D


# # _process runs once every frame.
# delta = seconds since the last frame (about 0.016 at 60 FPS).
# Multiplying movement by delta makes it "pixels per second"
# instead of "pixels per frame", so the speed stays the same
# no matter how fast or slow the computer runs.


func _process(delta) -> void:
	if Input.is_action_pressed("MoveLeft"):
		offset += Vector2(-500, 0) * delta

	if Input.is_action_pressed("MoveRight"):
		offset += Vector2(500,0) * delta
	
	if Input.is_action_pressed("MoveUp"):
		offset += Vector2(0,-500) * delta
	
	if Input.is_action_pressed("MoveDown"):
		offset += Vector2(0,500) * delta
