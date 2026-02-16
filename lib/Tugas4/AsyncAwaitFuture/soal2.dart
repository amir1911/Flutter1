import 'dart:async';

void main (List<String> args) async {
  print('life');

  Future.delayed(Duration(seconds: 2), () {
    print('never flat');
  });

  print("is");
}