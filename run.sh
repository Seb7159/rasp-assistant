echo "Starting to listen for a voice..."

voice="$(echo $1 | tr [:space:] '-')"
echo $voice 
message="$(curl http://92.238.48.132:1880/c?m=$voice)"
pico2wave -w voice.wav "$message"
echo $message 

echo "Sound created. Playing sound..."
aplay voice.wav 

echo "End of listening.. have a brilliant day!"
