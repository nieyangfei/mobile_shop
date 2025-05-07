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

/**
 * Main function, run the main widget.
 */
void main() {
  runApp(const MaterialApp(title: 'Flutter Tutorial', home: ShoppingAgent()));
}

/**
 * Shopping agent. Flutter's design is to seperate widget and state.
 */
class ShoppingAgent extends StatefulWidget {
  // This class is the configuration for the state.
  // It holds the values (in this case nothing) provided
  // by the parent and used by the build  method of the
  // State. Fields in a Widget subclass are always marked
  // "final".

  const ShoppingAgent({super.key});

  @override
  State<ShoppingAgent> createState() => Shopping();
}

/**
 * Shopping widget, which do the real shopping.
 */
class Shopping extends State<ShoppingAgent> {
  // The shopping total money. Because I have different items, I must use one variable to store.
  int totalMoney = 0;
  // Click cart icon, then display shopping successful greeting message.
  String greetBuying = "";

  /* Increase total money.
   */
  void _increment(int money) {
    setState(() {
      // This call to setState tells the Flutter framework
      // that something has changed in this State, which
      // causes it to rerun the build method below so that
      // the display can reflect the updated values. If you
      // change _counter without calling setState(), then
      // the build method won't be called again, and so
      // nothing would appear to happen.
      totalMoney += money;
    });
  }

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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/banana.png'),
                  Row(
                    children: [
                      Text('Banada \$1'),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.blue,
                        iconSize: 40,
                        onPressed: () {
                          print('Plus button clicked!');
                          _increment(1);
                          // You can add your own logic here
                        },
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset('assets/images/apple.png'),
                  IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.blue,
                    iconSize: 40,
                    onPressed: () {
                      print('Plus button clicked!');
                      _increment(2);
                      // You can add your own logic here
                    },
                  ),
                  Text('Apple \$2'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/strawberry.png'),
                  IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.blue,
                    iconSize: 40,
                    onPressed: () {
                      print('Plus button clicked!');
                      _increment(3);
                      // You can add your own logic here
                    },
                  ),
                  Text('Strawberry \$3'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.blue,
                iconSize: 40,
                onPressed: () {
                  print('Plus button clicked!');
                  setState(() {
                    // This call to setState tells the Flutter framework
                    // that something has changed in this State, which
                    // causes it to rerun the build method below so that
                    // the display can reflect the updated values. If you
                    // change _counter without calling setState(), then
                    // the build method won't be called again, and so
                    // nothing would appear to happen.
                    greetBuying =
                        "           Thank you, purchase successful! Total payment is $totalMoney.";
                  });

                  // You can add your own logic here
                },
              ),
              Text('$totalMoney'),
              Text('$greetBuying'),
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
