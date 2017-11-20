### See the LICENSE file for details
### use v6.0;

unit module PaganVisions2;
use nqp;
use NativeCall;
use SDL2::Raw;

class PaganVisions2::Game
{
	my $.renderer;

	method BUILD() {
		my int ($w, $h) = 800, 600;
		my SDL_Window $window;
		my SDL_Renderer $renderer;
		constant $sdl-lib = 'SDL2';


enum GAME_KEYS (
	K_UP => 82,
	K_DOWN => 81,
	K_LEFT => 80,
	K_RIGHT => 79,
	K_SPACE => 44,
);


		SDL_Init(VIDEO);

		$window = SDL_CreateWindow(
		"Pagan Visions - SDL 2",
		SDL_WINDOWPOS_CENTERED_MASK, SDL_WINDOWPOS_CENTERED_MASK,
		$w, $h,
		SHOWN
		);	

		$renderer = SDL_CreateRenderer( $window, -1, ACCELERATED );

		SDL_ClearError();

		my SDL_RendererInfo $renderer_info .= new;
		SDL_GetRendererInfo($renderer, $renderer_info);
		say $renderer_info;
		say %PIXELFORMAT.pairs.grep({ $_.value == any($renderer_info.texf1, $renderer_info.texf2, $renderer_info.texf3) });

		my CArray[int32] $data .= new;
		my int $numpoints;

	}

	method render() {

		### SDL_UpdateTexture($tile, 0, $data, 320*32);

		###SDL_SetRenderDrawColor(self.renderer, 0x0, 0x0, 0x0, 0xff);
		###SDL_RenderClear(self.renderer);
		###SDL_SetRenderDrawColor(self.renderer, 0xff, 0xff, 0xff, 0x7f);
		###SDL_RenderPresent(self.renderer);

		### SDL_RendererFlip;
	}

 	method mainloop() {
		my $start = nqp::time_n();
		my $event = SDL_Event.new;
		my num $df = 0.0001e0;
		my %down_keys;
		my @times;

		while SDL_PollEvent($event) {
			my $casted_event = SDL_CastEvent($event);

			given $casted_event {
				when (*.type == QUIT) {
					last;### mainloop;
			}

			when (*.type == KEYDOWN) {
				if GAME_KEYS(.scancode) -> $comm {
					%down_keys{$comm} = 1;
				}
				CATCH { say $_ }
			}
	
			when (*.type == KEYUP) {
				if GAME_KEYS(.scancode) -> $comm {
					%down_keys{$comm} = 0;
				} 
				CATCH { say $_ }
			}
		}

	###update();
	###draw();
	self.render();

	}
	}
}
