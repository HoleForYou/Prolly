extends ColorRect

var bg_color_array = ["FF0000","FFC000","FFFC00","FF0000","00FFFF","FF0000","e52165","0d1137","d72631","a2d5c6","077b8a","5c3c92","e2d810","d9138a","12a4d9","322e2f","f3ca20","000000","cf1578","e8d21d","039fbe","b20238","e75874","be1558","fbcbc9","322514","ecc19c","1e847f",]

func _ready():
	
	randomize()
	
	
	
	
	
	
	pass



func _on_Timer_timeout():
	var bg_color = bg_color_array[randi() % bg_color_array.size()]
	color = bg_color
	pass # Replace with function body.
