import 'package:flutter/material.dart';
import 'package:one_stop_mnnit/models/BuySellItem.dart';

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
    Item(
      name: 'Smartphone',
      price: 15000,
      description: 'Samsung Galaxy S10',
      seller: 'Alice Johnson',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Bicycle',
      price: 8000,
      description: 'Mountain Bike',
      seller: 'Bob Brown',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Headphones',
      price: 2000,
      description: 'Noise Cancelling Headphones',
      seller: 'Charlie Davis',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Desk Chair',
      price: 3500,
      description: 'Ergonomic Desk Chair',
      seller: 'Diana Evans',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Monitor',
      price: 12000,
      description: '24-inch Full HD Monitor',
      seller: 'Ethan Foster',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Keyboard',
      price: 1500,
      description: 'Mechanical Keyboard',
      seller: 'Fiona Green',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Mouse',
      price: 800,
      description: 'Wireless Mouse',
      seller: 'George Harris',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Bookshelf',
      price: 2500,
      description: 'Wooden Bookshelf',
      seller: 'Hannah Jackson',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Tablet',
      price: 20000,
      description: 'Apple iPad',
      seller: 'Ian King',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Camera',
      price: 45000,
      description: 'DSLR Camera',
      seller: 'Jack Lee',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Printer',
      price: 7000,
      description: 'HP LaserJet Printer',
      seller: 'Karen Miller',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Guitar',
      price: 10000,
      description: 'Acoustic Guitar',
      seller: 'Liam Nelson',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Watch',
      price: 5000,
      description: 'Smart Watch',
      seller: 'Mia Owens',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Backpack',
      price: 1500,
      description: 'Travel Backpack',
      seller: 'Noah Parker',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Sofa',
      price: 20000,
      description: 'Leather Sofa',
      seller: 'Olivia Quinn',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Microwave',
      price: 6000,
      description: 'Samsung Microwave Oven',
      seller: 'Paul Roberts',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Fan',
      price: 2000,
      description: 'Ceiling Fan',
      seller: 'Quinn Scott',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Air Conditioner',
      price: 30000,
      description: 'Split AC',
      seller: 'Rachel Taylor',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Refrigerator',
      price: 25000,
      description: 'Double Door Refrigerator',
      seller: 'Sam Underwood',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Washing Machine',
      price: 15000,
      description: 'Front Load Washing Machine',
      seller: 'Tina Vincent',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Oven',
      price: 8000,
      description: 'Electric Oven',
      seller: 'Uma Wilson',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Vacuum Cleaner',
      price: 5000,
      description: 'Dyson Vacuum Cleaner',
      seller: 'Victor Xander',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Blender',
      price: 3000,
      description: 'Kitchen Blender',
      seller: 'Wendy Young',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Coffee Maker',
      price: 4000,
      description: 'Espresso Coffee Maker',
      seller: 'Xander Zane',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Toaster',
      price: 1500,
      description: '2-Slice Toaster',
      seller: 'Yara Adams',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Mixer',
      price: 3500,
      description: 'Stand Mixer',
      seller: 'Zane Baker',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Iron',
      price: 1000,
      description: 'Steam Iron',
      seller: 'Amy Carter',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Hair Dryer',
      price: 2000,
      description: 'Philips Hair Dryer',
      seller: 'Brian Davis',
      image: "lib/assets/images/test.jpg",
      isSelling: false,
    ),
    Item(
      name: 'Electric Kettle',
      price: 1200,
      description: 'Stainless Steel Kettle',
      seller: 'Cathy Evans',
      image: "lib/assets/images/test.jpg",
      isSelling: true,
    ),
    Item(
      name: 'Rice Cooker',
      price: 2500,
      description: 'Electric Rice Cooker',
      seller: 'David Foster',
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
