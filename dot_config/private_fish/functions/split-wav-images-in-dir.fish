function split-wav-images-in-dir --description Split\ a\ single\ directory\'s\ worth\ of\ WAV\ images.
for album in *.cue
set -l based (basename $album .cue)
set -l output "$based split"
mkdir "$output"
echo "Splitting '$based'"
xld -f flac -o "$output" -c "$album" "$based.wav"
end
end
