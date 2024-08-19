cd ~/dev/nu/mini-meta-repo
flutter pub get
#monocli deps get -p flutter
monocli deps get -p flutter-desktop
monocli l10n get
export HOVER_HEIGHT=480
export HOVER_WIDTH=260
# hover clean-cache && rm -rf ~/Library/Caches/hover/ && rm -rf ~/Library/Caches/go-build/ && rm -rf ~/Library/Caches/flutter_engine/
hover run
