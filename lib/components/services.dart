import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_stop_mnnit/pages/buy_sell/buy_sell_page.dart';
import 'package:one_stop_mnnit/pages/lost_found/lost_found_page.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      children: [
        ServiceButton(
          icon: Icons.shopping_cart,
          label: 'Buy & Sell',
          onTap: () => Get.to(() => const BuySellPage()),
        ),
        ServiceButton(
          icon: Icons.search,
          label: 'Lost & Found',
          onTap: () {
            Get.to(() => const LostFoundPage());
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
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

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
