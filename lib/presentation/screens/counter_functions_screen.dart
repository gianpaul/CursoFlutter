import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text('Counter Functions'),
            ),
            actions: [
              IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  })
            ]),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              counter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            )
          ]),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFloatingButton(
                icon: Icons.refresh_rounded,
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                }),
            const SizedBox(height: 10),
            CustomFloatingButton(
                icon: Icons.exposure_minus_1_outlined,
                onPressed: () {
                  setState(() {
                    counter != 0 ? counter-- : counter = 0;
                  });
                }),
            const SizedBox(height: 10),
            CustomFloatingButton(
                icon: Icons.exposure_plus_1_outlined,
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
          ],
        ));
  }
}

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFloatingButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
