import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Myint Myat Kaung',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          // Search icon with light grey background
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
        children: [
          // Profile Header
          Container(
            height: 260,
            child: Stack(
              children: [
                // Cover Image
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/bagan.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Camera Icon for Cover Image
                Positioned(
                  bottom: 70,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey
                        .withOpacity(0.8), // semi-transparent background
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
                // Profile Picture with Border
                Positioned(
                  top: 90,
                  left: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Indigo color border
                        width: 4.0, // Thickness of the border
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
                // Camera Icon for Profile Picture
                Positioned(
                  top: 200,
                  left: 150,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.8),
                    child: IconButton(
                      icon: Icon(Icons.camera_alt, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Myint Myat Kaung",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "2.7K",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "friends",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "Mingalar Par",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Add to story',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Edit profile',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.more_horiz),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ],
            ),
          ),
          Divider(thickness: 1),
          // About section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ListView(
                  shrinkWrap: true, // to make it fit inside the scrollable body
                  physics:
                      NeverScrollableScrollPhysics(), // prevent scrolling separately from main ListView
                  children: [
                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text(
                          "Studied BSc (Computing) at Edinburgh Napier University"),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Lives in Yangon"),
                    ),
                    ListTile(
                      leading: Icon(Icons.pin_drop),
                      title: Text("From Yangon"),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("Single စစ်စစ်ပါ"),
                    ),
                    ListTile(
                      leading: Icon(Icons.people),
                      title: Text("Followed by 868 people"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1),
          // Posts Section
          _buildPost(
            profileImage: 'assets/images/profile.jpg',
            username: 'Myint Myat Kaung',
            timeAgo: '3m',
            postText: 'မင်္ဂလာပါ',
            postImage: 'assets/images/stand.jpg',
          ),
        ],
      ),
    );
  }

  Column _buildPost({
    required String profileImage,
    required String username,
    required String timeAgo,
    required String postText,
    String? postImage,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profileImage),
          ),
          title: Text(username),
          subtitle: Text(timeAgo),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(postText),
        ),
        if (postImage != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image.asset(postImage),
          ),
        _buildPostActions(),
      ],
    );
  }

  Padding _buildPostActions() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildPostActionButton(Icons.thumb_up_alt_outlined, 'Like'),
          _buildPostActionButton(Icons.comment_outlined, 'Comment'),
          _buildPostActionButton(Icons.send_outlined, 'Send'),
          _buildPostActionButton(Icons.share_outlined, 'Share'),
        ],
      ),
    );
  }

  GestureDetector _buildPostActionButton(IconData icon, String text) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}
