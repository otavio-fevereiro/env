cd $MMR
git fetch --all && git reset --hard origin/master
monocli clean-cache

flutter clean && flutter pub cache clean

rm -rf ~/dev/nu/mini-meta-repo/ios/Podfile.lock
rm -rf ~/Library/Caches/CocoaPods
rm -rf ~/Library/Developer/Xcode/DerivedData
rm -rf ~/dev/nu/mini-meta-repo/build/
rm -rf ~/.pub-cache

rm ~/.gradle/init.gradle
rm -r ~/.gradle/caches
cd $MMR/android && ./gradlew clean

monocli deps get -a pod-runner
monocli deps get -a submodules -f
monocli deps get -a carthage -f
monocli deps get -p ios
monocli deps get -a ios-legacy
monocli deps get -a ios-legacy-device
monocli deps get -p android
monocli deps get -p flutter

cd ~/dev/nu/mini-meta-repo/ios/ && pod install --repo-update
cd ~/dev/nu/mini-meta-repo/native/ios/ && pod install --repo-update

xcrun simctl boot 'iPhone 16 18-2' && open -a Simulator

flutter run --flavor minapi28staging
flutter run --flavor minapi28production --dart-define NUAPP_ALLOWED_LOGGERS=nu.ttfd --dart-define NUAPP_LOG_LEVEL=FINE
flutter run --flavor minapi28staging --dart-define NUAPP_ALLOWED_LOGGERS=nu.ttfd --dart-define NUAPP_LOG_LEVEL=FINE
