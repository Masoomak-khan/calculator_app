
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CalculatorView extends StatefulWidget {
  const CalculatorView({
    super.key,
  });

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;
  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  late final AppLifecycleListener _listener;

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = x.toString();
    _listener = AppLifecycleListener(
      onShow: _onShow,
      onHide: _onHide,
      onResume: _onResume,
      onPause: _onPasue,
      onDetach: _onDetach,
      onInactive: _onInactive,
      onRestart: _onRestart,
      onStateChange: _onStateChanged,
    );
  }

  void _onShow() => print("onShow called");
  void _onHide() => print("onHide called");
  void _onResume() => print("onResume called");
  void _onPasue() => print("onPasue called");
  void _onDetach() => print("onDetach called");
  void _onInactive() => print("onInactive called");
  void _onRestart() => print("onRestart called");
  void _onStateChanged(AppLifecycleState state) {
    print("onStateChanged called with state: $state");
    @override
    void dispose() {
      displayOneController.dispose();
      displayTwoController.dispose();
      _listener.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            CalculatorDisplay(
                key: const Key("displayOne"),
                hint: "Enter First Number",
                controller: displayOneController),
            const SizedBox(
              height: 30,
            ),
            CalculatorDisplay(
                key: const Key("displayTwo"),
                hint: "Enter Second Number",
                controller: displayTwoController),
            const SizedBox(
              height: 30,
            ),
            Text(
              key: const Key("Result"),
              z.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! +
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! -
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! *
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! /
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.divide),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  x = 0;
                  y = 0;
                  z = 0;
                  displayOneController.clear();
                  displayTwoController.clear();
                });
              },
              label: const Text("Clear"),
            ),
            //Expand
            //Calculator Buttoon
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay(
      {super.key, this.hint = "Enter a Number", required this.controller});
  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
          )),
    );
  }
}*/