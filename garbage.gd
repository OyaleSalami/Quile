extends Area


func _ready():
	pass # Replace with function body.

#
## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotate_y(2 * delta)


func _garbage_on_body_entered(body):
	print(body)
	if(body.add_dirt() == true):
		self.visible = false
 
