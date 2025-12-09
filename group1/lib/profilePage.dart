import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  String name = 'Aya';
  String bio = 'Student';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.brown,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'images/photo_2025-12-09_00-50-00.jpg',
              ),
            ),
            SizedBox(height: 16),

            Text(
              name,
              style: TextStyle(fontSize: 22, 
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                bio,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
