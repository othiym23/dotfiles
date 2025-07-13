function split-flac-images-in-artist-tree --description Split\ all\ the\ FLAC\ images\ in\ this\ artist\'s\ subtree.
 for dir in */\(FLAC\ full\ album\)
pushd $dir
for album in *.cue
set -l based (basename $album .cue)
set -l output "$based split"
mkdir "$output"
echo "Splitting '$based'"
xld -f flac -o "$output" -c "$album" "$based.flac"
end
popd
end
end
