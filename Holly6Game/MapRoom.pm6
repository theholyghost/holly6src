### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.
use Room;
use Box;

class MapRoom is Room {
	has @!exits;
	has $!relativex;
	has $!relativey;

	submethod BUILD() {
	}

	submethod add_exit($x, $y, $w, $h) {
		push (@!exits, Box.new($x,$y,$w,$h)); 
	}
}
