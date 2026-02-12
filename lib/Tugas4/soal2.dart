import 'dart:io';

class BankAccount {
  double saldo = 100000;

  void cekSaldo(){
    print("saldo anda saat ini: $saldo");
  }

  void setor(double jumlah){
    saldo += jumlah;
    print("Berhasil setor Rp $jumlah");
    cekSaldo();
  }

  void tarik (double jumlah){
    if (jumlah <= saldo){
      print("Berhasil tarik Rp $jumlah");
      cekSaldo();
    }else {
      print("saldo tidak mencukupi!");
    }
  }
}

void main(){
  BankAccount rekening = BankAccount();
  bool jalan = true;

  while(jalan){
    print("\n=== Aplikasi System Bank (oop) ===");
    print("1. cek saldo");
    print("2. setor tunai");
    print("3. tarik tunai");
    print("4. keluar");
    stdout.write("pilih menu: ");

    String? pilih = stdin.readLineSync();

    switch (pilih){
      case "1":
      rekening.cekSaldo();
      break;

      case "2":
      stdout.write("Masukan jumlah setor: ");
      double jumlah = double.parse(stdin.readLineSync()!);
      rekening.setor(jumlah);
      break;

      case "3":
      stdout.write("Masukan jumlah tarik: ");
      double jumlah = double.parse(stdin.readLineSync()!);
      rekening.tarik(jumlah);
      break;

      case "4":
      print("Terima kasih telah menggunakan aplikasi.");
      jalan = false;
      break;

      default:
        print("Menu tidak tersedia!");

    }
  }
}