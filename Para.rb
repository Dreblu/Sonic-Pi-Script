=begin
TASK 1: Define a function that has 5 parameters (four notes and one sleep time). Hit "Run" and nothing should play.
TASK 2: Call your function and give it five arguments (the four notes on lines 16, 18, 20, & 22 plus the sleep time). Hit run and you should hear four notes play.
TASK 3: Call your function twice in a live_loop so the entire Stranger Things Theme repeats.
=end

use_bpm 200
use_synth :saw


# First set of eighth notes
play :c2
sleep 0.5
play :e2
sleep 0.5
play :g2
sleep 0.5
play :b2
sleep 0.5


play :c3
sleep 0.5
play :b2
sleep 0.5
play :g2
sleep 0.5
play :e2
sleep 0.5
end

#define your function with parameters
use_synth :saw
define :play_eighth_notes do |r, t, y, w, f, g|
  play r
  sleep g
  play t
  sleep g
  play y
  sleep g
  play w
  sleep g
  play f
  sleep g
  play w
  sleep g
  play y
  sleep g
  play t
  sleep g
end

#call your function with the notes you want to play as arguments
live_loop :repeat_melody do
  play_eighth_notes :c2, :e2, :g2, :b2, :c3, 0.5