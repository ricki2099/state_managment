import 'dart:async';
import 'dart:math';

class DollarService {
  Future<double> getActualTrm() async {
    return await Future.delayed(
      Duration(seconds: 5),
      () => 5000,
    );
  }

  StreamSubscription subscription;

  DollarService() {
    /* subscription = getRealTimeTrm().listen((event) {
      print('subscribed: $event');
    });*/
  }

  Stream<double> getRealTimeTrm() {
    return Stream.periodic(Duration(seconds: 1), (actual) {
      final trm = 2000 + 2000 * Random().nextDouble();
      print('Trm: $trm');
      return trm;
    });
  }
}
