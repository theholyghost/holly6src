### See the LICENSE file for details
use nqp;
use NativeCall;
use SDL2::Raw;
use Game;

my $game = PaganVisions2::Game.new;

my @times;
my $event = SDL_Event.new;
my num $df = 0.0001e0;
enum GAME_KEYS (
	K_UP => 82,
	K_DOWN => 81,
	K_LEFT => 80,
	K_RIGHT => 79,
	K_SPACE => 44,
);
my %down_keys;

main: loop {
	my $start = nqp::time_n();


	while SDL_PollEvent($event) {
	my $casted_event = SDL_CastEvent($event);

	given $casted_event {
		when (*.type == QUIT) {
			last main;
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
}

$game.render();


@times.push: nqp::time_n() - $start;
$df = nqp::time_n() - $start;
}
@times .= sort;
my @timings = (@times[* div 50], @times[* div 4], @times[* div 2], @times[* * 3 div 4], @times[* - * div 100]);
say "frames per second:";
say (1 X/ @timings).fmt("%3.4f");
say "timings:";
say ( @timings).fmt("%3.4f");
say "";
'raw_timings.txt'.IO.spurt((1 X/ @times).join("\n"));
