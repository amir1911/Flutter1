import 'dart:math';

class Lingkaran{
  double jarijari;
  Lingkaran (this.jarijari);

  double hitungLuas(){
    return pi*jarijari*jarijari;
  }
}

void main(){
  Lingkaran lingkaran =Lingkaran(7);

  double luas = lingkaran.hitungLuas();

  print("Luas Lingkaran: $luas");
}