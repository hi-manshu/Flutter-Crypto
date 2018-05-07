import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttercrypto/data/crypto_data.dart';

class ProdCryptoRepo implements CryptoRepository {
  final String url = "https://api.coinmarketcap.com/v1/ticker/?limit=50";

  @override
  Future<List<Crypto>> fetchCurrencies() async {
    http.Response response = await http.get(url);
    var responseBody = JSON.decode(response.body);
    final statusCode = response.statusCode;
    if (statusCode != 200 || response.body == null) {
      throw new FetchDataException("An Error Occured ; [Status Code : $statusCode]");
    }
    return responseBody.map((c)=>new Crypto.fromMap(c));
  }
}
