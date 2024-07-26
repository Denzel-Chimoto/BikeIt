import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(child: Text('BikeIt')),
            Container(
              child: Text('Enter your Username'),
            ),
            TextField(),
            Container(
              child: Text('Enter your Password'),
            ),
            TextField(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/4');
                },
                child: Text('Login')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/2');
              },
              child: Text('Forgot Password'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/3');
              },
              child: Text('Create New Account'),
            ),
          ],
        ),
      ),
    );
  }
}
