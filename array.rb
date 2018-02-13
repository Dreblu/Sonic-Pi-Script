use_bpm 160
use_synth :saw
notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2] # The 0 through 2 sounds that plays in the Array


live_loop :main_theme do
  with_fx :distortion do # the filter and type of sound 
    index = 0
    10.times do # how many times it plays 
      play notes[index] # first note in the array (c2)
      sleep 0.5 #The wait time 
      index = index + 1 # with this index portion I added plus 1 to increase the sound.
    end
  end
end



