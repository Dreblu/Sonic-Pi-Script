use_bpm 160
use_synth :saw


play :c2
sleep 0.5
play :e2
sleep 0.5
play :g2
sleep 0.5
play :b2
sleep 0.5

with_fx :wobble do
  play 50
end


play :c2
sleep 0.5
play :e2
sleep 0.5
play :g2
sleep 0.5
play :b2
sleep 0.5

with_fx :wobble do
  play 100
end

play :c2
sleep 0.5
play :e2
sleep 0.5
play :g2
sleep 0.5
play :b2
sleep 0.5

with_fx :wobble do
  play 50
end

play :c2
sleep 0.5
play :e2
sleep 0.5
play :g2
sleep 0.5
play :b2
sleep 0.5

with_fx :wobble do
  play 100
end

sample :bass_drop_c
sample :bass_woodsy_c

