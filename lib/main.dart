import 'package:flutter/material.dart';

void main() => runApp(Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe-X',
      //Mention the routes here
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //child: SingleChildScrollView(
        child: MainPage(),
        //),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Userdetails(),
        SizedBox(
          height: 20,
        ),
        Search(),
        SizedBox(
          height: 20,
        ),
        Fooditems(),
        SizedBox(
          height: 20,
        ),
        Text(
          'Newest Arrivals',
          style: TextStyle(
              fontSize: 18, letterSpacing: 1, color: Colors.grey[600]),
        ),
        LatestArrivals()
      ]),
    );
  }
}

class Userdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Text(
                "What's On Your Mind",
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFF2F7FF)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Text(
                "    Search Food",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Fooditems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('images/bcake.png'),
                ),
                Text(
                  'CAKES',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('images/tacco.png'),
                ),
                Text(
                  'TACOS',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('images/icecream.png'),
                ),
                Text(
                  'Ice-Cream',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('images/pastery.png'),
                ),
                Text(
                  'PASTERY',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'images/pizza.png',
                  ),
                ),
                Text(
                  'PIZZAS',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LatestArrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            Container(
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://th.bing.com/th/id/OIP.Id-C7CYGbmu3h-tVs7EIpwHaEK?pid=Api&rs=1'),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 160,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF795560)),
                    height: 40,
                    width: 220,
                    child: Center(
                        child: Text(
                      'Chocolate Cakes',
                      style: TextStyle(
                        fontSize: 18,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
