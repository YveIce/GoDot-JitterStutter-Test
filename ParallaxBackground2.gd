extends ParallaxBackground

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var shiftoffset = -800 + (delta * 80); # 80 => screenwith div 10 sec
	self.set_scroll_offset(Vector2((self.get_scroll_offset().x - shiftoffset),0));
#	