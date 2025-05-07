import 'package:flutter/material.dart';

/**
 * Basic:
 * 1. A container shows all goods.
 * 2. All goods have plus symbol, money, and a cart shows their total money.
 * 3. A buy button can display the text: buy succesfful.
 *
 * Extra:
 * 1. Cart can click, get the extra information, such as goods list, remove or add.
 * 2. Cart has an extra page.
 * 3. A welcome page.
 * 4. Scroll advertises.
 * 5. Goods have detailed informations.
 *
 */

void main() {
  runApp(const MaterialApp(title: 'Flutter Tutorial', home: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Shopping list'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Row(
        children: [
          Column(
            children: [
              Image.asset('assets/images/banana.png'),
              Text('Dash 1'),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/apple.png'),
              Text('Dash 1'),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/strawberry.png'),
              Text('Dash 1'),
            ],
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}