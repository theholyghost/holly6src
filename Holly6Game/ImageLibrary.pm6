### Copyright (C) The Holy Ghost 2017
###This program is released under the GPL 3.0 and artistic license 2.0.

class ImageLibrary {
	has @.images;
	has $.index;
	
	submethod BUILD() {
		$!index = 0;
	}

	submethod add($image) {
		push ($image, @!images);
	}
	
	submethod index($idx) {
		return @!images[$idx];
	}

	submethod get() {
		if ($!index >= my $size = @!images) {
			$!index = 0;
		}
		return index($!index++);
	}	
					
}
