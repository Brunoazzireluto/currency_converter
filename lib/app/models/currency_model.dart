
class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name : 'Real', real: 1.0, dolar: 0.18 , euro: 0.16 , bitcoin: 0.0000030),
      CurrencyModel(name: 'Dolar', real: 5.46 , dolar: 1.0 , euro: 0.86, bitcoin: 0.000016 ),
      CurrencyModel(name: 'Euro', real: 6.33 , dolar: 1.16 , euro: 1.0, bitcoin:  0.000024 ),
      CurrencyModel(name: 'Bitcoin', real: 336109.81 , dolar: 61559.70, euro: 53080.77, bitcoin: 1.0 ),
    ];
  }

}