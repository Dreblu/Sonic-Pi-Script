=begin
1. Use three different methods to choose random notes from the 'notes' array.
2. DO NOT CHANGE ANY CODE, just assign values to the variables 'a', 'b', and 'c'.
3. Use the blue values that print in the log to troubleshoot.
4. Use the '=begin' and '=end' to comment out the two strategies you are not currently working on!
=end


# Stranger Things Main Theme
use_bpm 160
use_synth :saw
notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2] #notes that will play 


live_loop :strategy1 do
  # assign a value to 'a' using the .choose method from the Randomisation reading on Tuesday
  a = choose ([:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]) #with this method it will pick a random note and play it
  print a #The print feature is just when the random note is selected it will show on the right side where the music waves are. (numbers)
  play a
  sleep 0.5
end


live_loop :strategy2 do
  # assign a value to 'b' that will be used as the index value
  b = rrand_i(0, 7) #the b is being selested between the number 0 and 7, nothing more nothing less
  print b
  play notes[b] #this plays only the b note.
  sleep 0.5
end


live_loop :strategy3 do
  # assign a value to 'c' that will be used as the index value
  c = dice(8)-1 #this dice method is when the number in parenthesis is being doubled to increase sound or decrease (not exactly sure)
  print c
  play notes[c]
  sleep 0.5
end
