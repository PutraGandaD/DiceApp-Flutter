import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print('increase strength by 1');
  }

  void increaseSugar() {
    print('increase sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white),
                onPressed: increaseStrength,
                child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            const Text('3'),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.brown),
                onPressed: increaseSugar,
                child: const Text('+'))
          ],
        )
      ],
    );
  }
}
