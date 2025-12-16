#!/bin/bash

# Script para executar o benchmark de geradores de ID
# Este script usa o benchmark_pubspec.yaml para as dependências

echo "🔧 Configurando ambiente para benchmark de ID generators..."

# Backup do pubspec.yaml original
if [ -f "pubspec.yaml" ]; then
    cp pubspec.yaml pubspec.yaml.backup
    echo "✅ Backup do pubspec.yaml criado"
fi

# Usar o benchmark_pubspec.yaml
cp benchmark_pubspec.yaml pubspec.yaml
echo "✅ Usando benchmark_pubspec.yaml"

# Instalar dependências
echo "📦 Instalando dependências..."
flutter pub get

# Executar o benchmark
echo "🚀 Executando benchmark..."
echo "=================================================="
dart run benchmark/id_generators_benchmark.dart

# Restaurar pubspec.yaml original
if [ -f "pubspec.yaml.backup" ]; then
    mv pubspec.yaml.backup pubspec.yaml
    echo "✅ pubspec.yaml original restaurado"
    flutter pub get > /dev/null 2>&1
fi

echo "=================================================="
echo "✅ Benchmark concluído!"
