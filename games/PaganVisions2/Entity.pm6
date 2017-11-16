### See the LICENSE file for details
### use v6.0;
use NativeCall;

unit module PaganVisions2;

class PaganVision2::Entity is GameObject
{
	has $!staticimagelib ### StateImagelibrary.pm6

	method update() {
		
	}

	method draw($renderer) {

		$!staticimagelib.getImage().display($renderer);

	}

}
