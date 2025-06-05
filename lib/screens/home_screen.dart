import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie App'), backgroundColor: Colors.indigo),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSwipper(),
            SizedBox(height: 30),
            CustomListView(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
