import 'dart:io';

void main() {
  // Input nama depan
  stdout.write('Masukkan nama depan: ');
  String? namaDepan = stdin.readLineSync();

  // Input nama belakang
  stdout.write('Masukkan nama belakang: ');
  String? namaBelakang = stdin.readLineSync();

  String namaLengkap = '${namaDepan ?? ''} ${namaBelakang ?? ''}';

  print('\nNama lengkap anda adalah:');
  print(namaLengkap);
}
