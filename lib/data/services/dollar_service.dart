class DollarService {
  Future<double> getActualTrm() async {
    return await Future.delayed(
      Duration(seconds: 3),
      () => 3400,
    );
  }
}
