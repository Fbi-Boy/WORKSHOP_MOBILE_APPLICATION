class Produk {
  String nama;
  double _harga;

  Produk(this.nama, this._harga);

  double get harga => _harga;

  set harga(double nilai) {
    if (nilai < 0) {
      throw ArgumentError('Harga tidak boleh negatif');
    }

    _harga = nilai;
  }

  Produk.gratis(this.nama) : _harga = 0;
}

Future<List<Produk>> ambilDaftarProduk() async {
  await Future.delayed(Duration(seconds: 2));

  return [
    Produk('Laptop', 7500000),
    Produk('Mouse', 150000),
    Produk('Keyboard', 300000),
  ];
}

Future<void> main() async {
  List<Produk> daftarProduk = await ambilDaftarProduk();

  for (var produk in daftarProduk) {
    print('${produk.nama} - Rp${produk.harga}');
  }
}