import 'package:flutter/material.dart';
import 'package:one_stop_mnnit/models/LostFoundItem.dart';

class LostFoundPage extends StatefulWidget {
  const LostFoundPage({super.key});

  @override
  State<LostFoundPage> createState() => _LostFoundPageState();
}

class _LostFoundPageState extends State<LostFoundPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<LostFoundItem> items = [
    LostFoundItem(
      name: 'Water Bottle',
      description: 'Blue Milton bottle',
      contact: 'John - 9876543210',
      image: "lib/assets/images/test.jpg",
      location: 'Library',
      date: DateTime.now(),
      isLost: false,
    ),
    LostFoundItem(
      name: 'ID Card',
      description: 'College ID Card',
      contact: 'Jane - 9876543211',
      image: "lib/assets/images/test.jpg",
      location: 'CSED Block',
      date: DateTime.now(),
      isLost: true,
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
        title: const Text('Lost & Found'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'LOST ITEMS', icon: Icon(Icons.search)),
            Tab(text: 'FOUND ITEMS', icon: Icon(Icons.check_circle)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Lost Items Tab
          _buildItemsList(true),
          // Found Items Tab
          _buildItemsList(false),
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

  Widget _buildItemsList(bool isLost) {
    final filteredItems = items.where((item) => item.isLost == isLost).toList();

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
                Text('Location: ${item.location}'),
                Text('Date: ${item.date.toString().split(' ')[0]}'),
                Text('Contact: ${item.contact}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
