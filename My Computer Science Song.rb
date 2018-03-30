#Snoop Dogg- Drop it like its hot

use_synth :hollow
use_bpm 92

Cutoff = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Cutoff.wav"
Ryth = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Ryth.wav"
Timer = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Timer.wav"
Snoop = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Snoop sound.wav"
Vocal1 = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Vocal 1.wav"
Vocal2 = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Vocal 2.wav"
Intro = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Intro.wav"
Trans = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Transition.wav"
Outro = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Outro.wav"

#My Intro
=begin
sample Intro, amp:2
sleep 29



#My Custom Song 1

sample Vocal1,amp: 2
sleep 33


4.times do
  play :cs2, amp: 4, attack_level: 5
  sleep 0.75
  play :cs3, amp: 4, attack_level: 5
  sleep 0.25
  play :cs2, amp: 4, attack_level: 5
  sleep 0.75
  play :cs3, amp: 4, attack_level: 5
  sleep 0.25
end

###############
#=begin
sample Ryth,amp: 2
sleep 7

4.times do
  play :cs3, amp: 4, attack_level: 5
  sleep 0.75
  play :cs4, amp: 4, attack_level: 5
  sleep 0.25
  play :cs4, amp: 4, attack_level: 5
  sleep 0.75
  play :cs4, amp: 4, attack_level: 5
  sleep 0.25
end

live_loop :Timer do
  sample Timer,amp: 0.5
  sleep 14
end

sample Vocal2,amp: 5
sleep 3

live_loop :Ryth do
  sample Ryth,amp: 2
  sleep 7
=end

live_loop :Snoop do
  sample Snoop,amp: 300
  sleep 7
end


live_loop :Snoop do
  sample Snoop,amp: 300
  sleep 1
end


live_loop :Snoop do
  sample Snoop,amp: 300
  sleep 2
end


#=end

sleep 20

sample Cutoff, amp: 2
sleep 5



#My Transition
sample Trans, amp: 5
sleep 18


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


#My Outro
sample Outro, amp: 5
sleep 5



=begin
live_loop :Timer do
  stop
end

live_loop :Snoop do
  stop
end


live_loop :Ryth do
  stop
end
=end
