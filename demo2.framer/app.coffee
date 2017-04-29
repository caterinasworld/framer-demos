# import twitter background layer with WWCode
bg = new Layer
	width: 1242, height: 2208
	image: "images/twitter.png"

# import balloon images as layers	

# set up an array of colors to represent the different balloon colors
colors = ["blue", "green", "purple", "red", "yellow"]

# generate multiple balloon colors
# print color to check
# generate multiple balloons
# print balloon.x to check
# place all balloon at the bottom of the screen
# animate the balloon moving up the screen

for[1..100]
	color = Utils.randomChoice colors
	#print color

	balloon = new Layer
		image: "images/#{color}.png"
		width: 165, height: 391
		x: Utils.randomNumber -70, Screen.width + 70
		y: Screen.height - 391
	#print balloon.x

	balloon.animate
		properties: 
			y: -balloon.height
			x: balloon.x + Utils.randomNumber -500, 500
		time: Utils.randomNumber 4, 8
		delay: Utils.randomNumber 0, 5
		curve: Bezier.easeIn



