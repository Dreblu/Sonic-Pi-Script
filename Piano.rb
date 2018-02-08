use_bpm 65 # how high the keys go or low
use_synth :piano  #just the song of piano 

variable = 21 
88.times do #times it plays 
  play variable # The sound you selected to play from piano 
  sleep 0.25 #seconds 
  variable = variable + 1 #adding plus one to the song 
end