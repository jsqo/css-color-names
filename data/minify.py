import json

with open("colors.json") as f:
	jo = json.load(f)

with open("colors.min.json", "w") as f:
	f.write(json.dumps(jo))
