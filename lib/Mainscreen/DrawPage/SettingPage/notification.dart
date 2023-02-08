import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff58186F),
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            _tile('Cleaner has arrived at your location', 'Emma is ready to clean your house',Icons.person),
            SizedBox(
              height: 15,
            ),
            _tile('200 kilometer to arrive','Johnson is coming to your location', Icons.person_2),
          ],
        ),
      ),
    );
  }
}

Container _tile(String title, String subtitle, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.purple[500],
      ),
    ),
  );
}
