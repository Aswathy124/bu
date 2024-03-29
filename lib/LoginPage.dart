import 'package:bu1/dayscholar.dart';
import 'package:flutter/material.dart';
import 'package:bu1/hostler.dart'; // Import the HostlerLogin page


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String initialText = ''; // Initial text content

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // This gives us the total height and width of our device
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Set icon color to white
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous page
          },
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'hostler') {
                // Navigate to the hostler login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HostlerLogin()),
                );
              } else if (value == 'day_scholar') {
                // Navigate to the day scholar login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DayScholor()),
                );
              }
              // Handle other menu options if needed
            },

            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'hostler',
                child: Text('Hostler'),
              ),
              PopupMenuItem<String>(
                value: 'day_scholar',
                child: Text('Day Scholar'),
              ),
              PopupMenuItem<String>(
                value: 'faculty',
                child: Text('Faculty'),
              ),
            ],
            icon: Icon(Icons.menu, color: Colors.white), // Set icon color to white
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 119, 190, 1), // Set app bar background color
        elevation: 0, // Remove the app bar elevation
      ),
      body: Container(
        color: Color.fromRGBO(0, 119, 190, 1), // Set background color similar to app bar color
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.45,
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * 0.15, // Move the image down
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/fisat.png",
                      width: size.width * 0.80, // Allow width to take up available space
                      height: size.height * 0.25, // Adjust height as needed
                      fit: BoxFit.contain, // Adjust image fit as needed
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Welcome to FISAT College, where transportation is made easy with our comprehensive bus facility, Your Digital Ticket to Campus Transit. Whether you are a day scholar, hosteler, or faculty member, our modern buses ensure a comfortable commute to and from campus. With digital ticketing and real-time tracking, traveling to FISAT is convenient and stress-free. Join us and make your journey to campus effortless ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Add your other widgets or functionalities here
          ],
        ),
      ),
    );
  }
}
