class Currencyapi
{
    final String INR;
    final String USD;
    final String JPY;
    final String UGX;
    final String CHF;
    final String BZD;
    final String MXN;
    final String ZMW;
    final String YER;
    final String KGS;

    Currencyapi ({
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

    factory Currencyapi.fromJson(Map<String,dynamic> json){
      return Currencyapi(
        INR: json["rates"]["INR"]["rate"],
        USD: json["rates"]["USD"]["rate"],
        JPY: json["rates"]["JPY"]["rate"],
        UGX: json["rates"]["UGX"]["rate"],
        CHF: json["rates"]["CHF"]["rate"],
        BZD: json["rates"]["BZD"]["rate"],
        MXN: json["rates"]["MXN"]["rate"],
        ZMW: json["rates"]["ZMW"]["rate"],
        YER: json["rates"]["YER"]["rate"],
        KGS: json["rates"]["KGS"]["rate"],
      );
    }
}

