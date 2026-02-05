import 'dart:io';

void main() {

  stdout.write('Masukkan nama: ');
  String nama = stdin.readLineSync()!.trim();

  stdout.write('Masukkan peran (Penyihir / Guard / Werewolf): ');
  String peran = stdin.readLineSync()!.trim();

  if (nama.isEmpty && peran.isEmpty) {
    print('Nama harus diisi!');
  } else if (nama.isNotEmpty && peran.isEmpty) {
    print('Halo $nama, Pilih peranmu untuk memulai game!');
  } else if (peran == 'Penyihir') {
    print('Selamat datang di Dunia Werewolf!');
    print('Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  } else if (peran == 'Guard') {
    print('Selamat datang di Dunia Werewolf!');
    print('Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf!');
  } else if (peran == 'Werewolf') {
    print('Selamat datang di Dunia Werewolf!');
    print('Halo Werewolf $nama, kamu akan memakan mangsa setiap malam!');
  } else {
    print('Peran tidak dikenal!');
  }
}
