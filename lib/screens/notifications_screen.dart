import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          // Search icon with light grey background
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.more_horiz, color: Colors.black),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildNotificationSection('New'),
          _buildNotificationItem(
            'Nancy shared your post',
            '6h',
            FontAwesomeIcons.share,
            Colors.green,
            'nancy.jpeg'
          ),
          _buildNotificationSection('Today'),
          _buildNotificationItem(
            'Naw Phaw Eh Htar commented your post: "A chit lay..."',
            '9h',
            Icons.message,
            Colors.green,
            'nawphaw.jpeg'
          ),
          _buildNotificationItem(
            'A Page you follow, MIT, changed their name to MIEA ...',
            '13h',
            Icons.flag,
            Colors.orange,
            'miea_green.png'
          ),
          _buildNotificationItem(
            'Marcus Kaung, Thae Hsu, and 13 others reacted to a photo...',
            '17h',
            Icons.emoji_emotions,
            Colors.yellow,
            'stand.jpg'
          ),
          _buildNotificationItem(
            'Nan Su Yati Soe reacted to a photo you are tagged in...',
            '15h',
            FontAwesomeIcons.solidFaceAngry,
            Colors.red,
            'nansu.jpeg'
          ),
          _buildNotificationItem(
            'Poe Mamhe Thar and Naw Phaw Eh Htar reacted to your photo',
            '20h',
            Icons.favorite,
            Colors.red,
            'pmmt.jpeg'
          ),
          _buildNotificationItem(
            'You have memories with Poe Mamhe Thar and others...',
            '20h',
            Icons.facebook,
            Colors.indigo,
            'profile.jpg'
          ),
          _buildNotificationItem(
            'Nancy commented on a photo...',
            '21h',
            Icons.comment,
            Colors.green,
            'nancy.jpeg'
          ),
        ],
      ),
    );
  }

  // Method to create notification sections
  Widget _buildNotificationSection(String sectionTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        sectionTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  // Method to create individual notification items
  Widget _buildNotificationItem(
      String content,
      String time,
      IconData icon,
      Color iconColor,
      String imageName
      ) {
    return ListTile(
      leading: badges.Badge(
        badgeContent: Icon(icon,size: 20,color: Colors.white,),
        badgeStyle: badges.BadgeStyle(
          badgeColor: iconColor
        ),
        position: badges.BadgePosition.bottomEnd(),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/$imageName'),
        ),
      ),
      title: Text(content),
      subtitle: Text(time),
      trailing: Icon(Icons.more_horiz),
      onTap: () {},
    );
  }
}