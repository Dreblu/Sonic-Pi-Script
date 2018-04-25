#Snoop Dogg- Drop it like its hot

use_synth :hollow
use_bpm 92
x = 4 #This is a way to use variables for sleeps
y = 5 #The sleep
BuildUp = 0.5

Cutoff = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Cutoff.wav" #All the green links are my custom samples that I incorporated into my song
Ryth = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Ryth.wav"
Timer = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Timer.wav"
Snoop = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Snoop sound.wav"
Vocal1 = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Vocal 1.wav"
Vocal2 = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Vocal 2.wav"
Intro = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Intro.wav"
Trans = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Transition.wav"
Outro = "C:/Users/andre_alexander/Desktop/Sonic Pi Samples/Outro.wav"

#My Custom Song 1

sample Vocal1,amp: 2
sleep 33

4.times do #The times do only apply when you want the sound to play a certain amount of times, in this case 4
  play :cs2, amp: x, attack_level: y
  sleep 0.75
  play :cs3, amp: x, attack_level: y
  sleep 0.25
  play :cs2, amp: x, attack_level: y
  sleep 0.75
  play :cs3, amp: x, attack_level: y
  sleep 0.25
end


sample Ryth,amp: 2
sleep 7

4.times do
  play :cs3, amp: x, attack_level: y #Same piece of coding except the notes are different
  sleep 0.75
  play :cs4, amp: x, attack_level: y
  sleep 0.25
  play :cs4, amp: x, attack_level: y
  sleep 0.75
  play :cs4, amp: x, attack_level: y
  sleep 0.25
end


live_loop :Timer do #Every live loop is my custom sample and they are used to create the snoop dogg song
  sample Timer,amp: 0.5
  sleep 14
end

sample Vocal2,amp: y
sleep 3

live_loop :Ryth do
  sample Ryth,amp: 2
  sleep 7
end

live_loop :Snoop do
  sample Snoop, amp: 200
  sleep 7
end

sleep 30 # Gives it twenty second till the cutoff plays

2.times do
  sample Cutoff, amp: y  #End of snoop dogg song
  sleep y
end

=begin
2.times do
  sample Cutoff, amp: BuildUp #End of snoop dogg song # How i would use my build up but it does not work
  sleep y
  BuildUp = BuildUp +1
=end