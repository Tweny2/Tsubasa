'''
Godot4.4.1
v0.0.3.20250607
	# develop
		- move and slide
	# second commit


'''


extends CharacterBody2D

class_name Player

# ============================VAR============================
@export var speed : float = 60

@onready var animation_player: AnimationPlayer = $AnimationPlayer

# ==========================FUNC================================
func _process(delta: float) :
	var direction = Input.get_vector("p1_left","p1_right","p1_up","p1_down")
	velocity = direction * speed
	
	if velocity.length() > 0:
		animation_player.play("run")
		
	else:
		animation_player.play("idle")
	
	move_and_slide()
	
	
