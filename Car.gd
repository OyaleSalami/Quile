extends RigidBody

var acc = 0.1
var space = 0
var space_max = 6

func _ready():
	pass # Replace with function body.

func _process(delta):
	acc = clamp(acc, -1, 1)
	transform = transform.translated(Vector3(0,0,acc) * delta)

func add_dirt():
	if(space >= space_max):
		return false
	else:
		space += 1
		return true
