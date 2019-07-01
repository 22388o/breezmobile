import 'package:breez/bloc/user_profile/currency_data.dart';

class FiatConversion {
  CurrencyData currencyData;
  double exchangeRate;
  FiatConversion(this.currencyData, this.exchangeRate);

  String get logoPath {
    switch (currencyData.symbol.grapheme) {
      case "€":
        return "src/icon/btc_eur.png";
      case "£":
        return "src/icon/btc_gbp.png";
      case "¥":
        return "src/icon/btc_yen.png";
      case "\$":
        return "src/icon/btc_usd.png";
      default:
        return "src/icon/btc_usd.png";
    }
  }
}
