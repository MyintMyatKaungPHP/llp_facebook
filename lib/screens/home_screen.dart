import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'facebook',
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
              icon: Icon(Icons.search, color: Colors.black),
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
              icon: Icon(Icons.message, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body:  ListView(
        children: [
          _buildStatusInput(),
          Divider(),
          _buildActionButtons(),
          Divider(thickness: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/profile.jpg'),
                              maxRadius: 40,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add, color: Colors.white),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                iconSize: 18,  // Adjust icon size for better fitting
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text('Create Story'),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
                _buildStoryContainer(
                  'assets/images/stand.jpg',
                  'Poe Mamhe Thar',
                  profileImage: 'assets/images/pmmt.jpeg',
                ),
                _buildStoryContainer(
                  'assets/images/stand2.jpg',
                  'Naw Phaw Eh Htar',
                  profileImage: 'assets/images/nawphaw.jpeg',
                ),
                _buildStoryContainer(
                  'assets/images/stand.jpg',
                  'Myint Myat Kaung',
                  profileImage: 'assets/images/profile.jpg',
                ),
                _buildStoryContainer(
                  'assets/images/nancy.jpeg',
                  'Marcus Kaung',
                  profileImage: 'assets/images/profile2.jpg',
                ),
              ],
            ),
          ),
          Divider(thickness: 5,),
          _buildPost(
            profileImage: 'assets/images/profile.jpg',
            username: 'Myint Myat Kaung',
            timeAgo: '3m',
            postText: 'မင်္ဂလာပါ',
            postImage: 'assets/images/stand.jpg',
          ),
          Divider(thickness: 5,),
          _buildPost(
            profileImage: 'assets/images/profile2.jpg',
            username: 'Marcus Kaung',
            timeAgo: '2h',
            postText: 'Assignment ကတော့ facebook app ရဲ့ home screen ,notification & menu ပါ',
            postImage: null,
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          _buildPost(
            profileImage: 'assets/images/profile2.jpg',
            username: 'Marcus Kaung',
            timeAgo: '2h',
            postText: 'MIEA School 💚',
            postImage: 'assets/images/miea_green.png',
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          _buildPost(
            profileImage: 'assets/images/profile2.jpg',
            username: 'Marcus Kaung',
            timeAgo: '3h',
            postText: 'Hello',
            postImage: 'assets/images/stand2.jpg',
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
        ],
      ),
    );

  }
}


Widget _buildStoryContainer(String backgroundImage, String name, {String profileImage = 'assets/images/profile.jpg', bool addIcon = false}) {
  return Container(
    margin: EdgeInsets.all(10),
    width: 100,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
            width: 100,
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.indigo,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(profileImage),
              radius: 15,
            ),
          ),
        ),
        if (addIcon)
          Positioned(
            bottom: 0,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.indigo,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.white),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                iconSize: 18,
                onPressed: () {},
              ),
            ),
          ),
        Positioned(
          bottom: 5,
          left: 5,
          right: 5,
          child: Container(
            width: 90,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ),
      ],
    ),
  );
}
Padding _buildStatusInput() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'What is in your mind?',
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Padding _buildActionButtons() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildActionIcon(Icons.video_camera_back, 'Live', Colors.red),
        _buildActionIcon(Icons.photo_library, 'Photo', Colors.green),
        _buildActionIcon(Icons.video_camera_front, 'Room', Colors.purple),
      ],
    ),
  );
}

GestureDetector _buildActionIcon(IconData icon, String text, Color color) {
  return GestureDetector(
    child: Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 5),
        Text(text),
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