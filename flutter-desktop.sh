cd $MMR
flutter config --enable-macos-desktop &&
flutter run -d macos -t lib/main_desktop.dart --dart-define NUAPP_ALLOWED_LOGGERS=nu.ttfd --dart-define NUAPP_LOG_LEVEL=FINE