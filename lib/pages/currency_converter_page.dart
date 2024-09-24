import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget{
   const CurrencyConverterPage({super.key});

  @override
  State<StatefulWidget> createState() =>
    _PageState();
}
class _PageState extends State<CurrencyConverterPage>{
  double result=0;
  double lkrPrice = 309.10;
  double amount = 0;

  @override
  Widget build(BuildContext context) {

    const border =
    OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)));

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 79, 121, 113),title:const Text('Currency converter',style: TextStyle(color: Colors.white),),),
      backgroundColor: const Color.fromARGB(255, 205, 224, 219),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Currency Converter App',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text('USD - LKR', style: TextStyle(fontSize: 25)),
            Text(
              'LKR ${result.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  onChanged: (value){
                    amount=double.parse(value);
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: '0000',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 153, 0),
                    border: border,
                    focusedBorder: border,
                    label: Text(
                      'Please enter the amount of USD',
                      style: TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),
                    ),
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.number),
            ),
            TextButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white70),
                    fixedSize: WidgetStatePropertyAll(Size(100, 50)),
                    elevation: WidgetStatePropertyAll(10),
                    shadowColor: WidgetStatePropertyAll(Colors.black)),
                onPressed: () {
                  setState((){
                    result = lkrPrice * amount;
                  });
                },
                child: const Text('Convert')),
          ],
        ),
      ),
    );
  }
}