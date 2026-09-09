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

void main() {
  var produk1 = Produk('Laptop', 7500000);

  print('Nama: ${produk1.nama}');
  print('Harga: ${produk1.harga}');

  produk1.harga = 8000000;

  print('Harga baru: ${produk1.harga}');

  var produk2 = Produk.gratis('Pulpen');

  print('Nama: ${produk2.nama}');
  print('Harga: ${produk2.harga}');
}