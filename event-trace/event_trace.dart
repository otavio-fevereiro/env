import 'package:uuid/uuid.dart';

import 'event.dart';

class EventTrace {
  EventTrace({Stopwatch? stopwatch}) : _stopwatch = stopwatch ?? Stopwatch();

  final Stopwatch _stopwatch;
  final Set<String> _activeTraces = {};
  final List<TraceEvent> _events = [];

  List<TraceEvent> get events => List.unmodifiable(_events);
  bool get isRunning => _stopwatch.isRunning;
  Duration get totalElapsed =>
      Duration(milliseconds: _stopwatch.elapsedMilliseconds);

  void start() {
    _stopwatch.start();
  }

  void stop() {
    _stopwatch.stop();
  }

  String init() {
    final event = TraceEvent(
        id: const Uuid().v4(),
        type: TraceEventType.init,
        elapsedMs: _stopwatch.elapsedMilliseconds);

    _activeTraces.add(event.id);
    _events.add(event);

    return event.id;
  }

  void end(String id) {
    if (!_activeTraces.contains(id)) {
      return;
    }

    final event = TraceEvent(
        id: id,
        type: TraceEventType.end,
        elapsedMs: _stopwatch.elapsedMilliseconds);

    _activeTraces.remove(id);
    _events.add(event);
  }

  void dispose() {
    _activeTraces.clear();
    _events.clear();
    _stopwatch.stop();
  }
}
