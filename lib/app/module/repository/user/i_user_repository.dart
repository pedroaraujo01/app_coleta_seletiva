import 'package:app_coleta_seletiva/app/module/models/carrinho_model.dart';

import '../../models/predio_model.dart';
import '../../models/user_model.dart';

abstract class IUserRepository {
  bool userIsLogged();
  // Future<void> editUser(UserModel newUser);
  Future<String> getUserId();
  Future<String> getUserType();
  // Future<void> solicitarColeta(CarrinhoModel carrinho);
  // Future<int> consultarPontuacao(UserModel user);
  // Future<bool> resgatarCupom(int pontuacao, UserModel user);
  // Future<void> solicitarVisita(CarrinhoModel carrinho);
}
