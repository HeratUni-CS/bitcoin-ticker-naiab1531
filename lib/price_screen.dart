import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  List<DropdownMenItems> getDropdownItems() {
    List<DropdwonMenuItems<String>> DropdownItems = [];
    for (String currency in currenciesList) {
      String currency = currenciesList[i];
      var newItem = DropdownMenuItems(
        child: Text(currency),
        value: currency,
      );
    }
    DropdownItems.add(newItems);
    return DropdownItems;
  }

  List<Text> getPickerItems() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      Text(currency);
    }
    return pickerItems;
  }

  @override
  Widget build(BuildContext context) {
    getDropdownItems();
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: CupertinoPicker(
                BackgroundColor: Colors.LightBlue,
                ItemExtent: 32.5,
                onselectedItemChange: (selectedIndex) {},
                childern: getPickerItems(),
              )),
        ],
      ),
    );
  }
}
