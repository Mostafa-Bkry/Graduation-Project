import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Choose Your Sick Plant')),
        backgroundColor: const Color(0xff3eb489),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 210, childAspectRatio: 1.0),
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/potato.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('potato')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/tomato.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('tomato')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pepper.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('pepper')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/corn.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('corn')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/apple.png'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('apple')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Card(
            clipBehavior: Clip.hardEdge,
            elevation: 20,
            margin: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/strawberry.jpg'),
                    fit: BoxFit.cover),
              ),
              child: RawMaterialButton(onPressed: () => print('strawberry')),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        color: const Color(0xff3f414e),
        activeColor: Colors.green,
        backgroundColor: Colors.white,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.analytics_sharp, title: 'Analysis'),
          TabItem(icon: Icons.history, title: 'History'),
          TabItem(icon: Icons.emoji_emotions_rounded, title: 'Profile'),
        ],
        onTap: (int i) => clickedIcon(i),
      ),
    );
  }

  //Manage Icons of bottom navigation bar
  void clickedIcon(int i) {
    if (i == 0) {
      //Navigator.of(context).pushReplacementNamed('/home');
    } else if (i == 1) {
    } else if (i == 2) {
    } else {
      Navigator.of(context).pushReplacementNamed('/edit_profile');
    }
  }
}



/*
Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/potato.jpg'),
                      fit: BoxFit.cover)),
            ),
*/




/*
const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'PoppinsBold',
              color: Color(0xff3f414e),
            ),
          ),
          */

/*
IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.home,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.delivery_dining_sharp,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.card_giftcard,
            size: 35,
          ),
        ),
        const SizedBox(width: 40),
        IconButton(
          highlightColor: Colors.red,
          color: Colors.amber[900],
          onPressed: () => print('Gifts'),
          icon: const Icon(
            Icons.feedback_rounded,
            size: 35,
          ),
        )
        */


/*
BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: 'Go To Home',
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  const Icon(Icons.message),
                  const Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Icon(
                      Icons.brightness_1,
                      size: 8.0,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              tooltip: 'Messages',
              label: 'Messages',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              tooltip: 'Profile',
              label: 'Profile',
            ),
          ],
          currentIndex: 1,
        ),
        */