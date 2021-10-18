
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);



  test('Conversão de real para dolar', (){
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Conversão de dolar para real', (){
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(name: 'Dolar', real: 5.46 , dolar: 1.0 , euro: 0.86, bitcoin: 0.000016, iene: 114.30  );
    homeController.fromCurrency = CurrencyModel(name : 'Real', real: 1.0, dolar: 0.18 , euro: 0.16 , bitcoin: 0.0000030, iene: 20.70 );
    homeController.convert();
    expect(fromText.text, '5.46');
  });

}