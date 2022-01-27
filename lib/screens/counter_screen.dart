import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void reset(){
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10.0,
        backgroundColor: Colors.deepPurple,
      ),
      // backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Clicks Counter", style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn, 
    required this.resetFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children:  [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => increaseFn(),
        ),

        // const SizedBox( width: 20, ),

        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () => resetFn(),
        ),

        // const SizedBox( width: 20, ),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
