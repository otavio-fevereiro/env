monocli doctor -v
flutter emulators --launch apple_ios_simulator
cd $MMR && flutter run
cd $MMR && flutter run --dart-define NUAPP_ALLOWED_LOGGERS=nu.ttfd --dart-define NUAPP_LOG_LEVEL=FINE