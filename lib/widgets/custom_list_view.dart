import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Now Playing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.indigo,
            ),
          ),
        ),
        ListView.builder(
          itemCount: 10,
          itemBuilder: (_, i){
            return Container(width: 30, height: 40, color: Colors.red,);
          },
        )
      ],
    );
  }
}
