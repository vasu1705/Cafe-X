import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/login.jpg',
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: 0.5,
                child: Container(

                  height: 200,
                  color: Colors.black,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'USERNAME',
                      style: TextStyle(
                          //color: Color(0xffffeb3b),
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 2),
                    ),
                    TextField(

                      cursorColor: Colors.yellow[600],
                      style: TextStyle(fontSize:18,color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter your Username',
                        hintStyle: TextStyle(fontSize:14,color: Colors.grey[400]),
                        focusColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: -10, horizontal: 10),
                      ),
                    ),
                    Text(
                      'PASSWORD',
                      style: TextStyle(
                        //color: Color(0xffffeb3b),
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 2),
                    ),
                    TextField(

                      cursorColor: Colors.yellow[600],
                      style: TextStyle(fontSize:18,color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(fontSize:14,color: Colors.grey[400]),
                        focusColor: Colors.white,
                        contentPadding:
                        EdgeInsets.symmetric(vertical: -10, horizontal: 10),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        color: Colors.black26,
                        onPressed: (){
                          Navigator.pushNamed(context, '/Mainpage');
                        },
                        child: Text('LOGIN',style: TextStyle(fontSize: 18,color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
