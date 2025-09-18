import 'package:equatable/equatable.dart';

enum TraceEventType {
  init,
  end,
}

class TraceEvent extends Equatable {
  const TraceEvent({
    required this.id,
    required this.type,
    required this.elapsedMs,
  });

  final String id;
  final TraceEventType type;
  final int elapsedMs;

  @override
  List<Object?> get props => [id, type, elapsedMs];

  @override
  String toString() {
    return 'TraceEvent(id: $id, type: $type, elapsedMs: $elapsedMs)';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.name,
      'elapsed_ms': elapsedMs,
    };
  }
}
