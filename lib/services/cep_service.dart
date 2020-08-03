import 'package:http/http.dart' as http;
import 'package:search_cep/models/result_cep.dart';

class CepService {
  // ignore: missing_return
  static Future<CepModel> fetchCep(String cep) async {
    final response = await http.get('https://viacep.com.br/ws/$cep/json/');
    if (response.statusCode == 200) {
      return CepModel.fromJson(response.body);
    } else {
      throw new ArgumentError('Falha ao acessar o serviço');
    }
  }
}
