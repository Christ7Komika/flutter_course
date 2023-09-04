import "package:flutter/material.dart";

import "../widget/ListTileWidget.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.menu_book), onPressed: () {}),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 300.0,
                  height: 200.0,
                  color: Colors.blue,
                )
              ],
            ),
            const Text(
              "AppBar Tutorial",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text(
              "Coding with Tea",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/im1.jpg"),
              ),
              accountName: Text("Christ Komika"),
              accountEmail: Text("christkomika7@gmail.com"),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: AssetImage("images/im1.jpg"),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("images/im1.jpg"),
                ),
              ],
            ),
            ListTileWidget(title: "Home", icon: Icons.home),
            ListTileWidget(title: "Shop", icon: Icons.shop),
            ListTileWidget(title: "Favorites", icon: Icons.favorite_sharp),
            ListTileWidget(title: "Home", icon: Icons.home),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTileWidget(title: "Red"),
            ListTileWidget(title: "Green"),
            ListTileWidget(title: "Blue"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        elevation: 0,
        // shape: const CircleBorder(
        //   side: BorderSide(color: Colors.white, width: 2.0),
        // ),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shop,
                    color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "Fav",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
