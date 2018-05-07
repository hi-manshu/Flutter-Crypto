import 'dart:async';

import 'package:fluttercrypto/data/crypto_data.dart';

class MockCryptoRepo implements CryptoRepository {
  @override
  Future<List<Crypto>> fetchCurrencies() {
    return new Future.value(currencies);
  }
}

var currencies = <Crypto>[
  new Crypto(name: "Bitcoin", price_usd: "800.60", percent_change_1h: "-0.7"),
  new Crypto(name: "Ethereum", price_usd: "650.60", percent_change_1h: "-1.7"),
  new Crypto(name: "Ripple", price_usd: "100.60", percent_change_1h: "0.7")
];
