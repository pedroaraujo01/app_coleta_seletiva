class Rotas{

  late String _rua;
  late String _numero;
  late String _cidade;
  late String _bairro;
  late String _cep;

  late double _latitude;
  late double _longitude;

  Rotas();

  double get longitude => _longitude;

  set longitude(double value) {
    _longitude = value;
  }

  double get latitude => _latitude;

  set latitude(double value) {
    _latitude = value;
  }

  String get cep => _cep;

  set cep(String value) {
    _cep = value;
  }

  String get bairro => _bairro;

  set bairro(String value) {
    _bairro = value;
  }

  String get cidade => _cidade;

  set cidade(String value) {
    _cidade = value;
  }

  String get numero => _numero;

  set numero(String value) {
    _numero = value;
  }

  String get rua => _rua;

  set rua(String value) {
    _rua = value;
  }
}