void main() {
  List<int> nilai = [80, 90, 65, 70, 95];

  // Menampilkan hanya nilai yang lulus (>= 75)
  final nilaiLulus = nilai.where((n) => n >= 75).toList();

  print('Nilai lulus: $nilaiLulus');

  // Mengubah nilai menjadi predikat huruf
  final predikat = nilai.map((n) {
    return switch (n) {
      >= 90 => 'A',
      >= 75 => 'B',
      _ => 'C',
    };
  }).toList();

  print('Predikat: $predikat');
}