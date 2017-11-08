### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use Box;

class Sprite is export {
	has $.box;

	method BUILD($x, $y, $w, $h) {
		.box = Box($x,$y,$w,$h);
	}

	method draw() {
	}	

	method update() {
	}

}

