extends Node2D

const speed = 50;
# direction 1 equals movement right. direction -1 equals left.
var direction = 1;
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta):
	
	if ray_cast_right.is_colliding():
		print('right')
		direction = -1
		animated_sprite.flip_h = true
	
	if ray_cast_left.is_colliding():
		print('left')		
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * speed * delta;
