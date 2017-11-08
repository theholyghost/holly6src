### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

class Box {
	has $.x;
	has $.y;

	has $.w;
	has $.h;

	submethod BUILD($x, $y, $w, $h) {
		.x = $x;
		.y = $y;
		.w = $w;
		.h = $h;
	}

	submethod is_collision(Box $box) {
		if (.x < $box.x) {
			return 0;		
		}
		if (.x + .w > $box.x + $box.w) {
			return 0;		
		}
		if (.y < $box.y) {
			return 0;		
		}
		if (.y + .h > $box.y + $box.h) {
			return 0;		
		}
		return 1;
	}
}

#sub EXPORT
#{
#	%(
#	'$x' => shift(@_),
#	'$y' => shift(@_),
#	'$w' => shift(@_),
#	'$h' => shift(@_),
#	)
#}

