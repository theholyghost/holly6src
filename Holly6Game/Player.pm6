### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

use Box;
use ImageLibrary;

class Player {
	has $.box;
	has $.leftimages;
	has $.rightimages;
	has $.upimages;
	has $.downimages;

	submethod BUILD($x, $y, $w, $h) {
		.box = Box($x,$y,$w,$h);

		.leftimages = ImageLibrary(); 
		.rightimages = ImageLibrary(); 
		.upimages = ImageLibrary(); 
		.downimages = ImageLibrary(); 
	}

}

