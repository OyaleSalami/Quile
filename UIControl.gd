extends Control

var Camera
var Car

# Called when the node enters the scene tree for the first time.
func _ready():
	Camera = self.get_node("../Main Camera")
	Car = self.get_node("../Car")
	
func _process(delta):
	get_node("Space Button").text = String(Car.space)
	if (get_node("Direction Buttons/LeftButton").pressed == true):
		Car.rotate_y(1 * delta * Car.acc)
	if (get_node("Direction Buttons/RightButton").pressed == true):
		Car.rotate_y(-1 * delta * Car.acc)
		
	if (get_node("Acceleration Buttons/UpButton").pressed == true):
		Car.acc += (0.3 * delta)
	if (get_node("Acceleration Buttons/DownButton").pressed == true):
		Car.acc -= (0.3 * delta)


func _on_Plus_Button_down():
	Camera.fov = Camera.fov - 1
	#Reduce camera's FOV

func _on_Minus_Button_down():
	Camera.fov = Camera.fov + 1
	#Increase camera's FOV



