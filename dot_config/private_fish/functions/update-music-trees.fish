function update-music-trees --description 'Log into the NAS and rebuilt the CSV and tree files for the music tree.'
ssh ogd@euterpe.local 'bash -l ./catalog-nas.sh'
cp /Volumes/data/downloads/\(music\)/catalogs/trees/*.tree ~/Dropbox/music/trees/ ; and cp /Volumes/data/downloads/\(music\)/catalogs/trees/csv/*.csv ~/Dropbox/music/trees/csv/
cat ~/Dropbox/music/trees/csv/euterpe\ *.csv > ~/Dropbox/music/trees/csv/euterpe\ \(NAS\).csv
end
