void main() {

  PegawaiTetap pegawaiTetap = PegawaiTetap("Rudi", 3000000, 500000);
  PegawaiKontrak pegawaiKontrak = PegawaiKontrak("Sinta", 150000, 20);

  print("Pegawai Tetap:");
  print("Nama : ${pegawaiTetap.nama}");
  print("Gaji : Rp ${pegawaiTetap.hitungGaji()}");
  print("");

  print("Pegawai Kontrak:");
  print("Nama : ${pegawaiKontrak.nama}");
  print("Gaji : Rp ${pegawaiKontrak.hitungGaji()}");
}


class Pegawai {
  String nama;

  Pegawai(this.nama);

  double hitungGaji() {
    return 0;
  }
}

class PegawaiTetap extends Pegawai {
  double gajiPokok;
  double tunjangan;

  PegawaiTetap(String nama, this.gajiPokok, this.tunjangan)
      : super(nama);

  @override
  double hitungGaji() {
    return gajiPokok + tunjangan;
  }
}

class PegawaiKontrak extends Pegawai {
  double upahHarian;
  int hariMasuk;

  PegawaiKontrak(String nama, this.upahHarian, this.hariMasuk)
      : super(nama);

  @override
  double hitungGaji() {
    return upahHarian * hariMasuk;
  }
}
