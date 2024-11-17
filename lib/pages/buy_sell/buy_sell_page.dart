import 'package:flutter/material.dart';
import 'package:one_stop_mnnit/models/Item.dart';

class BuySellPage extends StatefulWidget {
  const BuySellPage({super.key});

  @override
  State<BuySellPage> createState() => _BuySellPageState();
}

class _BuySellPageState extends State<BuySellPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Item> items = [
    Item(
      name: 'Textbook',
      price: 500,
      description: 'Engineering Mathematics textbook',
      seller: 'John Doe',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Laptop',
      price: 30000,
      description: 'Dell Inspiron 15',
      seller: 'Jane Smith',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy & Sell'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'BUY', icon: Icon(Icons.shopping_cart)),
            Tab(text: 'SELL', icon: Icon(Icons.sell)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Buy Tab
          _buildItemsList(false),
          // Sell Tab
          _buildItemsList(true),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new item logic
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildItemsList(bool isSelling) {
    final filteredItems =
        items.where((item) => item.isSelling == isSelling).toList();

    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(
              item.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.description),
                Text('Price: ₹${item.price}'),
                Text('Seller: ${item.seller}'),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Contact seller logic
              },
              child: const Text('Contact'),
            ),
          ),
        );
      },
    );
  }
}
