Feature: Json tutorial feature

Scenario: Json reader(parser)

	* def jsonObject = 
	"""
	[
		{
			"name": "Jack",
			"city": "Tawa",
			"age":	34
		},
		{
			"name": "Owen",
			"city": "Linden",
			"age":	36
		}
	]
	"""
	
	* def jsonSecond = 
	"""
	{
		"menu": {
		  "id": "file",
		  "value": "File",
		  "popup": {
		    "menuitem": [
		      {"value": "New", "onclick": "CreateNewDoc()"},
		      {"value": "Open", "onclick": "OpenDoc()"},
		      {"value": "Close", "onclick": "CloseDoc()"}
		    ]
		  }
		}
	}
	"""
	
#	* print jsonObject
#	* print jsonObject[*].name
	* print jsonSecond.menu.popup.menuitem