
use_synth :piano
use_bpm 75
wind = 0.5


4.times do
  sample :ambi_soft_buzz, amp: wind
  sample :ambi_swoosh, amp: wind
  sample :ambi_drone, amp: wind
  sleep 2
  wind = wind +1
end

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
  sample :ambi_drone
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

use_synth :saw
notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]


live_loop :main_theme do
  with_fx :slicer do
    index = 0
    8.times do
      play notes[index]
      sleep 2
      index = index + 1
    end
    index = 0
  end
end




live_loop :bass do
  sample :ambi_choir , beat_stretch: 5, rate: 3, amp:1
  sleep 1.375
  sample :ambi_choir , beat_stretch: 5, rate: 2, amp:1
  sleep 1.375
  
end

