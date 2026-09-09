Stream<String> ambilNotifikasi() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield 'Notifikasi ke-$i';
  }
}

Future<void> main() async {
  await for (final notifikasi in ambilNotifikasi()) {
    print(notifikasi);
  }
}