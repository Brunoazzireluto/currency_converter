
class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;
  final double iene;

  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin, required this.iene});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name : 'Real', real: 1.0, dolar: 0.18 , euro: 0.16 , bitcoin: 0.0000030, iene: 20.70 ),
      CurrencyModel(name: 'Dolar', real: 5.46 , dolar: 1.0 , euro: 0.86, bitcoin: 0.000016, iene: 114.30  ),
      CurrencyModel(name: 'Euro', real: 6.33 , dolar: 1.16 , euro: 1.0, bitcoin:  0.000024, iene: 132.72 ),
      CurrencyModel(name: 'Bitcoin', real: 336109.81 , dolar: 61559.70, euro: 53080.77, bitcoin: 1.0, iene: 7011199.46 ),
      CurrencyModel(name: 'Iene', real: 0.048 , dolar: 0.0087, euro: 0.0075, bitcoin: 0.00, iene:1.0 )
    ];
  }

}