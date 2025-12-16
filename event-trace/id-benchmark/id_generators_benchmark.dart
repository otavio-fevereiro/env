import 'dart:math';

import 'package:uuid/uuid.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:opentelemetry/sdk.dart' as sdk;

void main() {
  print('🚀 Benchmark de Geradores de ID\n');
  print('Comparando performance de:');
  print('1. Uuid().v4() - UUID versão 4 (aleatório)');
  print('2. Uuid().v7() - UUID versão 7 (timestamp + aleatório)');
  print('3. sdk.IdGenerator() - OpenTelemetry IdGenerator');
  print('4. Random().nextInt().toString() - Random integer como string');
  print('   (0x7FFFFFFF = 2,147,483,647 = maior int positivo 32-bit)');
  print('5. Uuid com MathRNG - UUID usando MathRNG (não criptográfico)\n');

  // Configurações do benchmark
  final iterations = [1000, 10000, 100000, 1000000];
  const warmupIterations = 1000;

  // Instâncias dos geradores
  final uuid = const Uuid();
  final uuidMathRNG = Uuid(goptions: GlobalOptions(MathRNG()));
  final otelIdGenerator = const sdk.IdGenerator();
  final random = Random();

  print('Executando warmup com $warmupIterations iterações...\n');

  // Warmup para estabilizar a JIT
  _warmup(uuid, uuidMathRNG, otelIdGenerator, random, warmupIterations);

  // Executar benchmarks para diferentes números de iterações
  for (final iteration in iterations) {
    print('📊 Benchmark com $iteration iterações:');
    print('=' * 50);

    _runBenchmark('UUID v4', iteration, () => uuid.v4());
    _runBenchmark('UUID v7', iteration, () => uuid.v7());
    _runBenchmark('OpenTelemetry IdGenerator (TraceId)', iteration,
        () => _listToHex(otelIdGenerator.generateTraceId()));
    _runBenchmark('OpenTelemetry IdGenerator (SpanId)', iteration,
        () => _listToHex(otelIdGenerator.generateSpanId()));
    _runBenchmark('Random().nextInt(0x7FFFFFFF).toString()', iteration,
        () => random.nextInt(0x7FFFFFFF).toString());
    _runBenchmark('UUID v4 com MathRNG', iteration, () => uuidMathRNG.v4());
    _runBenchmark('UUID v7 com MathRNG', iteration, () => uuidMathRNG.v7());

    print('');
  }

  // Teste de unicidade
  print('🔍 Teste de Unicidade (100.000 IDs):');
  print('=' * 50);
  _testUniqueness(uuid, uuidMathRNG, otelIdGenerator, random);

  // Análise de tamanho
  print('\n📏 Análise de Tamanho dos IDs:');
  print('=' * 50);
  _analyzeSizes(uuid, uuidMathRNG, otelIdGenerator, random);
}



void _warmup(Uuid uuid, Uuid uuidMathRNG, sdk.IdGenerator otelIdGenerator,
    Random random, int iterations) {
  for (int i = 0; i < iterations; i++) {
    uuid.v4();
    uuid.v7();
    _listToHex(otelIdGenerator.generateTraceId());
    _listToHex(otelIdGenerator.generateSpanId());
    random.nextInt(0x7FFFFFFF).toString();
    uuidMathRNG.v4();
    uuidMathRNG.v7();
  }
}

void _runBenchmark(String name, int iterations, String Function() generator) {
  final stopwatch = Stopwatch()..start();

  for (int i = 0; i < iterations; i++) {
    generator();
  }

  stopwatch.stop();

  final totalTimeMs = stopwatch.elapsedMicroseconds / 1000;
  final avgTimePerIdMicros = stopwatch.elapsedMicroseconds / iterations;
  final idsPerSecond = (iterations * 1000000) / stopwatch.elapsedMicroseconds;

  print('$name:');
  print('  Tempo total: ${totalTimeMs.toStringAsFixed(2)} ms');
  print('  Tempo médio por ID: ${avgTimePerIdMicros.toStringAsFixed(3)} μs');
  print('  IDs por segundo: ${idsPerSecond.toStringAsFixed(0)}');
  print('');
}

void _testUniqueness(Uuid uuid, Uuid uuidMathRNG,
    sdk.IdGenerator otelIdGenerator, Random random) {
  const testSize = 100000;

  // Teste UUID v4
  final uuidV4Set = <String>{};
  for (int i = 0; i < testSize; i++) {
    uuidV4Set.add(uuid.v4());
  }
  print(
      'UUID v4 - Únicos: ${uuidV4Set.length}/$testSize (${((uuidV4Set.length / testSize) * 100).toStringAsFixed(2)}%)');

  // Teste UUID v7
  final uuidV7Set = <String>{};
  for (int i = 0; i < testSize; i++) {
    uuidV7Set.add(uuid.v7());
  }
  print(
      'UUID v7 - Únicos: ${uuidV7Set.length}/$testSize (${((uuidV7Set.length / testSize) * 100).toStringAsFixed(2)}%)');

  // Teste OpenTelemetry TraceId
  final otelTraceIdSet = <String>{};
  for (int i = 0; i < testSize; i++) {
    otelTraceIdSet.add(_listToHex(otelIdGenerator.generateTraceId()));
  }
  print(
      'OpenTelemetry TraceId - Únicos: ${otelTraceIdSet.length}/$testSize (${((otelTraceIdSet.length / testSize) * 100).toStringAsFixed(2)}%)');

  // Teste OpenTelemetry SpanId
  final otelSpanIdSet = <String>{};
  for (int i = 0; i < testSize; i++) {
    otelSpanIdSet.add(_listToHex(otelIdGenerator.generateSpanId()));
  }
  print(
      'OpenTelemetry SpanId - Únicos: ${otelSpanIdSet.length}/$testSize (${((otelSpanIdSet.length / testSize) * 100).toStringAsFixed(2)}%)');

  // Teste Random().nextInt().toString()
  final randomIntSet = <String>{};
  for (int i = 0; i < testSize; i++) {
    randomIntSet.add(random.nextInt(0x7FFFFFFF).toString());
  }
  print(
      'Random().nextInt().toString() - Únicos: ${randomIntSet.length}/$testSize (${((randomIntSet.length / testSize) * 100).toStringAsFixed(2)}%)');


  // Teste UUID v4 com MathRNG
  final uuidMathRNGV4Set = <String>{};
  for (int i = 0; i < testSize; i++) {
    uuidMathRNGV4Set.add(uuidMathRNG.v4());
  }
  print(
      'UUID v4 com MathRNG - Únicos: ${uuidMathRNGV4Set.length}/$testSize (${((uuidMathRNGV4Set.length / testSize) * 100).toStringAsFixed(2)}%)');

  // Teste UUID v7 com MathRNG
  final uuidMathRNGV7Set = <String>{};
  for (int i = 0; i < testSize; i++) {
    uuidMathRNGV7Set.add(uuidMathRNG.v7());
  }
  print(
      'UUID v7 com MathRNG - Únicos: ${uuidMathRNGV7Set.length}/$testSize (${((uuidMathRNGV7Set.length / testSize) * 100).toStringAsFixed(2)}%)');
}

void _analyzeSizes(Uuid uuid, Uuid uuidMathRNG, sdk.IdGenerator otelIdGenerator,
    Random random) {
  final uuidV4 = uuid.v4();
  final uuidV7 = uuid.v7();
  final otelTraceId = _listToHex(otelIdGenerator.generateTraceId());
  final otelSpanId = _listToHex(otelIdGenerator.generateSpanId());
  final randomInt = random.nextInt(0x7FFFFFFF).toString();
  final uuidMathRNGV4 = uuidMathRNG.v4();
  final uuidMathRNGV7 = uuidMathRNG.v7();

  print('UUID v4: "$uuidV4" (${uuidV4.length} caracteres)');
  print('UUID v7: "$uuidV7" (${uuidV7.length} caracteres)');
  print(
      'OpenTelemetry TraceId: "$otelTraceId" (${otelTraceId.length} caracteres)');
  print(
      'OpenTelemetry SpanId: "$otelSpanId" (${otelSpanId.length} caracteres)');
  print('Random(0x7FFFFFFF): "$randomInt" (${randomInt.length} caracteres)');
  print(
      'UUID v4 com MathRNG: "$uuidMathRNGV4" (${uuidMathRNGV4.length} caracteres)');
  print(
      'UUID v7 com MathRNG: "$uuidMathRNGV7" (${uuidMathRNGV7.length} caracteres)');

  // Análise de bytes
  print('\nTamanho em bytes (UTF-8):');
  print('UUID v4: ${uuidV4.codeUnits.length} bytes');
  print('UUID v7: ${uuidV7.codeUnits.length} bytes');
  print('OpenTelemetry TraceId: ${otelTraceId.codeUnits.length} bytes');
  print('OpenTelemetry SpanId: ${otelSpanId.codeUnits.length} bytes');
  print('Random(0x7FFFFFFF): ${randomInt.codeUnits.length} bytes');
  print('UUID v4 com MathRNG: ${uuidMathRNGV4.codeUnits.length} bytes');
  print('UUID v7 com MathRNG: ${uuidMathRNGV7.codeUnits.length} bytes');

  // Análise de bytes originais (antes da conversão para hex)
  final otelTraceIdRaw = otelIdGenerator.generateTraceId();
  final otelSpanIdRaw = otelIdGenerator.generateSpanId();
  print('\nTamanho dos dados binários originais:');
  print('OpenTelemetry TraceId (raw): ${otelTraceIdRaw.length} bytes');
  print('OpenTelemetry SpanId (raw): ${otelSpanIdRaw.length} bytes');
}

String _listToHex(List<int> bytes) {
  return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
}
