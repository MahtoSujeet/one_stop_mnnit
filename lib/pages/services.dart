import 'package:flutter/material.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      children: [
        ServiceButton(
          icon: Icons.shopping_cart,
          label: 'Buy and Sell',
          onTap: () {
            // Navigate to buy and sell page
          },
        ),
        ServiceButton(
          icon: Icons.search,
          label: 'Lost and Found',
          onTap: () {
            // Navigate to lost and found page
          },
        ),
        ServiceButton(
          icon: Icons.restaurant_menu,
          label: 'Mess Menu',
          onTap: () {
            // Navigate to mess menu page
          },
        ),
      ],
    );
  }
}

class ServiceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ServiceButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
