### See the LICENSE file for details
### use v6.0;

use NativeCall;
use SDL2::Raw;

unit module PaganVisions;

class PaganVisions::StateImageLibrary
{
	has @!images; ### list of Image instances
	has $index;

	method addImage($image, $renderer) {
		my $tile = SDL_CreateTexture($renderer, %PIXELFORMAT<RGBA8888>,
                        TARGET, $image.width, $image.height);
		push(@!images, $tile);
	}

	method getImage($entity) {
		if ($index >= @!images.elems) {
			$index = 0;
		}
		SDL_UpdateTexture(@!images[$index], 0, $entity.data, 320*32);
		return @!images[$index++];			
	}

	method getImageWithIndex($ind) {
		return @!images[$ind];			
	}


}
