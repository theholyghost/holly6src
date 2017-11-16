### See the LICENSE file for details
### use v6.0;
use NativeCall;

unit module PaganVisions2;

class PaganVision2::MovingEntity is GameObject
{
	has $!direction;
	has $!moving;
	has $!dx; ### move x + dx
	has $!dy;

	has $!leftstaticimagelib ### StateImagelibrary.pm6
	has $!righttstaticimagelib
	has $!upstaticimagelib
	has $!downstaticimagelib
	has $!leftimagelib
	has $!rightimagelib
	has $!upimagelib
	has $!downimagelib

	method update() {
		
	}

	method draw() {

	}

}
