var colors = ["royal blue", "raspberry", "indigo", "neon yellow"];
var names = ["Dorothy", "Rose", "Blanche", "Sophia"];

colors.push("glitter pink");
names.push("Sparkle Motion");

for (var i = 0; i < colors.length; i++) {
	console.log(colors[i]);
}

for (var i = 0; i < names.length; i++) {
	console.log(names[i]);
}

console.log(names);
console.log(colors);

if (names.length == colors.length) {
    var barn = {};   
    for (var i = 0; i < names.length; i++) {
    barn[names[i]] = colors[i];
    }
}

console.log(barn);

function Car(size, color, mpg, sound, type) {
	this.size = size;
	this.color = color;
	this.mpg = mpg;
	this.sound = function() { 
	    console.log("Vroom!"); 
	};
	this.type = function() {
		if (this.mpg < 12) {
			console.log("Screw the environment! Get outta my way!");
		}	else {
			console.log("Slow and steady preserves the environment.");
		}
	};
}

var newCar1 = new Car("Sedan", "Blue", 16);
console.log(newCar1);
newCar1.sound();
newCar1.type();

var newCar2 = new Car("SUV", "Royal Blue", 10);
console.log(newCar2);
newCar2.sound();
newCar2.type();

var newCar3 = new Car("Tank", "Camo Green", 1.2);
console.log(newCar3);
newCar3.sound();
newCar3.type();
