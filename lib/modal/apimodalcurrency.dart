class Currencyapi {
  final double INR;
  final int USD;
  final double JPY;
  final double UGX;
  final double CHF;
  final double BZD;
  final double MXN;
  final double ZMW;
  final double YER;
  final double KGS;

  Currencyapi({
    required this.INR,
    required this.USD,
    required this.JPY,
    required this.UGX,
    required this.CHF,
    required this.BZD,
    required this.MXN,
    required this.ZMW,
    required this.YER,
    required this.KGS,
  });

  factory Currencyapi.fromJson(Map<String, dynamic> json) {
    return Currencyapi(
      INR: json['conversion_rates']["INR"],
      USD: json['conversion_rates']["USD"],
      JPY: json['conversion_rates']["JPY"],
      UGX: json['conversion_rates']["UGX"],
      CHF: json['conversion_rates']["CHF"],
      BZD: json['conversion_rates']["BZD"],
      MXN: json['conversion_rates']["MXN"],
      ZMW: json['conversion_rates']["ZMW"],
      YER: json['conversion_rates']["YER"],
      KGS: json['conversion_rates']["KGS"],
    );
  }
}
