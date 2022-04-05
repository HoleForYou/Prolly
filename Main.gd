extends Control


func _ready():
	load_file()
	$TextEdit.text = global.txt
	pass

func save(content):
	var file = File.new()
	file.open("res://TODO.todo.dat", File.WRITE)
	file.store_string(content)
	file.close()

func load_file():
	var file = File.new()
	file.open("res://TODO.todo.dat", File.READ)
	var content = file.get_as_text()
	file.close()
	global.txt = content

#func _input(event):
#	if event is InputEventKey and event.is_pressed():
#		save(global.txt)
#	pass

func _process(delta):
	global.txt = $TextEdit.text
	save(global.txt)
	pass


func _on_Button_pressed():
	
	OS.shell_open("https://ko-fi.com/blackholeforyou")
	pass # Replace with function body.


func _on_Button2_pressed():
	OS.shell_open("https://ggbot.itch.io/")
	pass # Replace with function body.
