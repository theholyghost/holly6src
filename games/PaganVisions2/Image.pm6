### See the LICENSE file for details
### use v6.0;
use NativeCall;
use SDL2::Raw

unit module PaganVisions2;

class PaganVisions2::Image
{
	has $!image_data;
	has $!tile;

	has $!srcrect;
	has $!destrect;

	method BUILD($width, $height, $renderer) {
		my CArray[int32] $data .= new;
		$!image_data = $data;


		###SDL_Rect 
		$!srcrect .= new: x => 0, y => 0, w => $width, h => $height;
		$!destrect .= new: x => $!x, y => $!y, w => $width, h => $height;
		
	}

	method display($renderer) {

		SDL_RenderCopy($renderer, $tile, $src, SDL_Rect);


	}
}
