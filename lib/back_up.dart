import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  static String route = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              color: Colors.grey[300],  // Light grey background
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ),
          // Message icon with light grey background
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],  // Light grey background
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.message, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
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
                        borderRadius: BorderRadius.circular(30.0),  // Rounded border
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.video_camera_back, color: Colors.red,),
                      SizedBox(width: 5,),
                      Text('Live')
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.photo_library, color: Colors.green,),
                      SizedBox(width: 5,),
                      Text('Photo')
                    ],
                  ),
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.video_camera_front, color: Colors.purple,),
                      SizedBox(width: 5,),
                      Text('Room')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
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
                Container(
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
                          image: AssetImage('assets/images/stand.jpg'),
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
                            backgroundImage: AssetImage('assets/images/profile.jpg'),
                            radius: 15,
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
                            'Myint Myat Kaung',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
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
                          image: AssetImage('assets/images/stand2.jpg'),
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
                            backgroundImage: AssetImage('assets/images/profile2.jpg'),
                            radius: 15,
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
                            'Marcus Kaung',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
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
                          image: AssetImage('assets/images/stand.jpg'),
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
                            backgroundImage: AssetImage('assets/images/profile.jpg'),
                            radius: 15,
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
                            'Myint Myat Kaung',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
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
                          image: AssetImage('assets/images/stand2.jpg'),
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
                            backgroundImage: AssetImage('assets/images/profile2.jpg'),
                            radius: 15,
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
                            'Marcus Kaung',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                title: Text('Myint Myat Kaung'),
                subtitle: Text('3m'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('မင်္ဂလာပါတောသားတွေ'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset('assets/images/stand.jpg'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          SizedBox(width: 5,),
                          Text('Like')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.comment_outlined),
                          SizedBox(width: 5,),
                          Text('Comment')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.send_outlined),
                          SizedBox(width: 5,),
                          Text('Send')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text('Share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.jpg'),
                ),
                title: Text('Marcus Kaung'),
                subtitle: Text('2h'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Assignment ကတော့ facebook app  ရဲ့ home screen ,notification & menu ပါ'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          SizedBox(width: 5,),
                          Text('Like')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.comment_outlined),
                          SizedBox(width: 5,),
                          Text('Comment')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.send_outlined),
                          SizedBox(width: 5,),
                          Text('Send')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text('Share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.jpg'),
                ),
                title: Text('Marcus Kaung'),
                subtitle: Text('2h'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('MIEA School 💚'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset('assets/images/miea_green.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          SizedBox(width: 5,),
                          Text('Like')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.comment_outlined),
                          SizedBox(width: 5,),
                          Text('Comment')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.send_outlined),
                          SizedBox(width: 5,),
                          Text('Send')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text('Share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.jpg'),
                ),
                title: Text('Marcus Kaung'),
                subtitle: Text('3h'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Hello'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset('assets/images/stand2.jpg'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          SizedBox(width: 5,),
                          Text('Like')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.comment_outlined),
                          SizedBox(width: 5,),
                          Text('Comment')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.send_outlined),
                          SizedBox(width: 5,),
                          Text('Send')
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(width: 5,),
                          Text('Share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 5, color: Colors.grey, width: double.infinity,),
        ],

      ),
    );
  }
}