### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use Box;
class Room {
	has @.walls;
	has @.sprites;
	has @.enemies;

	submethod BUILD() {
	}

	submethod add_wall($x, $y, $w, $h) {
		push (@!walls, Box.new($x,$y,$w,$h)); 
	}
	submethod add_sprite($sprite) {
		push (@!sprites, $sprite); 
	}
	submethod add_enemy($enemy) {
		push (@!enemies, $enemy); 
	}
}
