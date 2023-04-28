import'package:flutter/material.dart';
import 'package:signin_login/login.dart';
import 'signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slick Shop',),
        centerTitle: true,
        elevation: 20.0,

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(50),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Hello there, Welcome to Slick Shop',
                    style: TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //button to access the signin page
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: const Text(
                        'SIGNIN',
                      ),
                  ),
                  SizedBox(width: 20,),
                  //button to access the login page
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      'LOGIN',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
