import 'dart:math';

class Lingkaran {
  late double jarijari;

  void setRuas (double value){
    if (value <0){
      jarijari = value * -1;
    }else{
      jarijari = value;
    }
  }

  double getruas(){
    return jarijari;
  }

  double hitungluas(){
    return pi * jarijari * jarijari;
  }
}