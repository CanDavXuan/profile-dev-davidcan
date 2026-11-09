extends CharacterBody2D

var character : CharacterBody2D  = self;
var vecposition : Vector2
var complete : bool = true; 


# Get clicked position and send character position.
func _paintnclick() -> Vector2:
	var mousposition : Vector2;
	if Input.is_action_pressed("mouse_click"):
		mousposition = get_global_mouse_position()
		return mousposition;
	return Vector2(self.position);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:

	if complete == true:
		vecposition = _paintnclick();
		complete = false
	
	character.velocity = character.position.direction_to(vecposition) *200;
		
	if character.position.distance_to(vecposition) > 30:
		character.move_and_slide()
	else:
		complete = true
