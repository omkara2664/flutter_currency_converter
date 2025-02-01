import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  late double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.from(
        alpha: 1,
        red: 0.212,
        green: 0.2,
        blue: 0.2,
      ),
      appBar: AppBar(
        backgroundColor: Color.from(
          alpha: 1,
          red: 0.212,
          green: 0.2,
          blue: 0.2,
        ),
        elevation: 10,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Colors.brown,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : 0}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 10, left: 10),
              margin: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: textEditingController,
                onSubmitted: (value) => {print(value)},
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  filled: true,
                  fillColor: Color.from(
                      alpha: 1, red: 0.294, green: 0.294, blue: 0.294),
                  prefixIconColor: Colors.black87,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // Button

            //raised
            // appears like a text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: convert,
                // OR
                // onPressed: () {
                //   convert();
                // },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black38,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Convert'),
                // child: const Icon(Icons.money),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
