
use_synth :piano
use_bpm 75
choir = 0.5


play 72
sleep 0.25
play 70
sleep 0.25
play 72
sleep 0.5
play 67
sleep 0.25

play 65
sleep 0.5
play 70
sleep 0.5
play 62
sleep 0.25
play 60
sleep 0.25


live_loop :melody do
  play 72
  sleep 0.25
  play 70
  sleep 0.25
  play 72
  sleep 0.5
  play 67
  sleep 0.25
  
  play 65
  sleep 0.5
  play 70
  sleep 0.5
  play 62
  sleep 0.25
  play 60
  sleep 0.25
end


live_loop :bass do
  sample :ambi_choir , beat_stretch: 5, rate: 5, amp: choir
  sleep 1
  sample :ambi_choir , beat_stretch: 3, rate: 2.5, amp: choir
  sleep 1
  choir = choir +1
end



=begin
live_loop :mysamples do
  sample :ambi_soft_buzz, amp: 5
  sample :ambi_swoosh, amp: 5
  sample :ambi_drone, amp: 5
  sleep 4
end
=end