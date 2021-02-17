extends RichTextLabel

func _process(_delta):
	self.text = str("Score: "+str(global.score))
	
