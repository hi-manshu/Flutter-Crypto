import 'package:fluttercrypto/data/crypto_data.dart';
import 'package:fluttercrypto/dependency_injection.dart';

abstract class CryptoListViewContract {
  void onLoadCryptoOnComplete(List<Crypto> item);
  void onLoadCryptoError();
}

class CryptoListPresenter {
  CryptoListViewContract _view;
  CryptoRepository _repository;

  CryptoListPresenter(this._view) {
    _repository = new Injector().cryptoRepository;
  }
  void loadCurrencies() {
    _repository
        .fetchCurrencies()
        .then((c) => _view.onLoadCryptoOnComplete(c))
        .catchError((onError) => _view.onLoadCryptoError());
  }
}
