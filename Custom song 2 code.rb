#My Custom Song 2
use_synth :piano
use_bpm 75
wind = 0.5
Snoop_Dogg = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Snoop Dogg 64.wav"# This is a sample of my song

sample Snoop_Dogg, amp:2
sleep 3

4.times do
  sample :ambi_soft_buzz, amp: wind
  sample :ambi_swoosh, amp: wind
  sample :ambi_drone, amp: wind
  sleep 2
  wind = wind +1 # this is the build up portion in which the sound gets louder
end


define :play_eighth_notes do # with this it allows me to play my piano notes at any time just typing in that word
  
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

play_eighth_notes # wont play if not is placed at the end


4.times do
  a = choose ([:g2, :e2, :g2, :e2, :g2, :e2, :g2, :e2]) #This choice 4 random piano notes
  print a
  play a
  sleep 1
end
#be sure to remove the hashtags for lines 135 and 170 before pressing the start button when you want to stop the live loops
#=begin
live_loop :melody do
  use_synth_defaults amp: 0.5
  sample :ambi_drone
  
  play_eighth_notes # My melody and my notes (same as above)
  
end

use_synth :saw
notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]


live_loop :main_theme do
  use_synth_defaults attack: 1, release: 0.5
  with_fx :slicer do
    index = 0
    8.times do
      play notes[index]
      sleep 2.5
      index = index + 1 # my index give that spin on my song
    end
    index = 0
  end
end


live_loop :bass do
  sample :ambi_choir , beat_stretch: 5, rate: 3, amp:1
  sleep 1.375
  sample :ambi_choir , beat_stretch: 5, rate: 2, amp:1 # Just something that I thought would be cool to add
  sleep 1.375
  
end
#=end