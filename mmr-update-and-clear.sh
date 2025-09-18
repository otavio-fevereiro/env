cd $MMR
git fetch --all && git reset --hard origin/master
monocli clean-cache
monocli deps get -p flutter-desktop
# monocli deps get -a ios-legacy
