extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 500.0
var damage = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)


func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.UP)
	position.x = wrapf(position.x, 0.0, 1024.0)
	position.y = wrapf(position.y, 0.0, 600.0)


func _on_Timer_timeout():
	queue_free()
	


func _on_Area2D_body_entered(body):
	queue_free()
