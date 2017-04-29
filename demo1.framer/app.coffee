# console.log
console.log "Welcome to CONNECT"

# print statement
print "Good morning!"
 
# Set Device background
Canvas.backgroundColor = "#ccc"

# Set Screen background
Screen.backgroundColor = "#00AAFF"

# # Create a layer
square = new Layer
	width: 400	
	height: 400
	backgroundColor: "#FFF"
	
# center the square
square.center()

# Create additional states
square.states =
	state1: scale: 1.5
	state2: rotation: 225
	state3: scale: 0.5, borderRadius: 250
	
# Create an animation
square.states.animationOptions =
#	curve: "spring(250,20,100)"
	curve: Bezier.ease

# Animate based on the onClick event
square.onClick ->
	square.stateCycle()