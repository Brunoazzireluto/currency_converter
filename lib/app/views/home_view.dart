import 'package:currency_converter/app/components/currenty_line.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 150, left: 30, right: 30, bottom: 20),
            child:Column(
                children: [
                  Image.asset('assets/images/icon.png', width: 150, height: 150,),
                  SizedBox(height: 50,),
                  CurrencyBox(
                    selectedItem: homeController.toCurrency,
                    items: homeController.currencies, 
                    controller: toText, 
                    onChanged: (model) {
                      setState(() {
                        homeController.toCurrency = model!;
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  CurrencyBox(
                    selectedItem: homeController.fromCurrency,
                    items: homeController.currencies,
                    controller: fromText,
                    onChanged: (model) {
                      setState(() {
                        homeController.fromCurrency = model!;
                      });
                    },
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: (){
                      homeController.convert();
                    },
                    child: Text('Converter')
                  )
                ],
              ),
            ),
          ),
      ),
      );
  }
}