import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kejamarenik',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Knewave', // Set default font family to Knewave
      ),
      home: StartPage(),
    );
  }
}
class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image or Color
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png'), // Add your logo asset here
                      SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 55,
                            color: Color(0xFFD98506), // Use color code D98506 for 'Kejam'
                            fontFamily: 'Knewave', // Apply Knewave-Regular.ttf font to 'Kejam'
                            fontWeight: FontWeight.normal, // Use normal weight for regular font
                          ),
                          children: [
                            TextSpan(
                              text: 'Kejam',
                            ),
                            TextSpan(
                              text: 'arenik',
                              style: TextStyle(
                                color: Colors.white, // White color for 'arenik'
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We care your business',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'OtherFont', // Apply another font to this text
                          color: Colors.white, // White color for the entire phrase
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Positioned Widget for Button
          Positioned(
            left: 72,
            top: 650,
            child: Transform.translate(
              offset: Offset(0, 0),
              child: Container(
                width: 268,
                height: 68,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/CreateAccountPage');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 255, 255, 255)), // Adjust button color as needed
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // Set corner radius
                      ),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20), // Adjust text size as needed
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FullNamePage()));
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class FullNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Your Full Name'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BirthdayPage()));
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class BirthdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GenderPage()));
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class GenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Gender'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordPage()));
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
  }

