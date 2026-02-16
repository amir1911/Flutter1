import 'dart:async';

Future<void> line() async {
  await Future.delayed(Duration(seconds: 5), () {
    print('pernakah kau merasa');
  });
}
  Future<void> line2() async {
    await Future.delayed(Duration(seconds: 4), () {
      print('pernakah kau merasa');
    });
  }
  
  Future<void> line3() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('pernakah kau merasa');
    });
  }

  Future<void> line4() async {
    await Future.delayed(Duration(seconds: 1), () {
      print('Hatimu hampa, pernakah kau merasa, hati mu kosong');
    });
  }

  Future<void> main(List<String> args) async {
    print('Ready, Sing');
    await line();
    await line2();
    await line3();
    await line4();
  }
