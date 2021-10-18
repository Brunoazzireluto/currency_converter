import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel ?)? onChanged;

  const CurrencyBox({Key? key, required this.items,  required this.controller, required this.onChanged, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 56,
                    child: DropdownButton<CurrencyModel>(
                      value: selectedItem,
                      isExpanded: true,
                      iconEnabledColor: Colors.purpleAccent,
                      underline: Container(height: 1, color: Colors.purple,) ,
                      items: items.map((e) => 
                        DropdownMenuItem(
                          value: e,
                          child: Text(e.name))).toList(),
                      onChanged: onChanged,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                    ),
                  ),
                ),
              ],
            );
  }
}