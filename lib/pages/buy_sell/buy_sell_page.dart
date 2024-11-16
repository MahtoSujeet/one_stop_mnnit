import 'package:flutter/material.dart';
import 'package:one_stop_mnnit/models/Item.dart';

class BuySellPage extends StatefulWidget {
  const BuySellPage({Key? key}) : super(key: key);

  @override
  State<BuySellPage> createState() => _BuySellPageState();
}

class _BuySellPageState extends State<BuySellPage> {
  final List<Item> items = [
    Item(
      name: 'Textbook',
      price: 500,
      description: 'Engineering Mathematics textbook',
      seller: 'John Doe',
      image:
          "lib/assets/images/test.jpg", // Updated path to match directory structure
    ),
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy & Sell'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Add new item logic
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                items[index].image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(items[index].name),
              subtitle: Text('₹${items[index].price}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Contact seller logic
                },
                child: const Text('Contact Seller'),
              ),
              onTap: () {
                // Show item details
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new item
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
