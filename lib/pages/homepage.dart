import 'package:flutter/material.dart';
import 'package:one_stop_mnnit/pages/services.dart';
import 'package:one_stop_mnnit/utils/verticalspace.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your one Stop for all\n',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                      ),
                    ),
                    TextSpan(
                      text: 'MNNIT\n',
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: MediaQuery.of(context).size.width * 0.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Information',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ServicesGrid(),
          ],
        ),
      ),
    );
  }
}
