import 'package:bu1/registerfee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DayScholor(),
    );
  }
}

class DayScholor extends StatefulWidget {
  const DayScholor({super.key});

  @override
  State<DayScholor> createState() => _DayScholorState();
}

class _DayScholorState extends State<DayScholor> {
  final _loginFormKey = GlobalKey<FormState>(); // Add this line to define the form key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image1.jpg'), // Add your background image path here
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 80.0),
          child: Form(
            key: _loginFormKey, // Assign the form key
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30.0),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                // LoginForm
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white.withOpacity(0.8), // Add opacity to make it blend with the background
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Implement forgot password functionality
                              // For example:
                              // Navigator.push(
                              //  context,
                              //  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                              // );
                            },
                            child: Text('Forgot Password?', style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_loginFormKey.currentState!.validate()) {
                            // If all validations pass
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterFee()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                        ),
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text('Don\'t have an account? Sign Up', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final _signUpFormKey = GlobalKey<FormState>(); // GlobalKey for the sign-up form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/image1.jpg'), // Add your background image path here
      fit: BoxFit.cover,
    ),
    ),
    padding: EdgeInsets.all(20.0),
    child: Form(
    key: _signUpFormKey, // Assign the form key
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    SizedBox(height: 30.0),
    Text(
    "SIGN UP",
    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 20.0),
    Container(
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.white.withOpacity(0.8), // Add opacity to make it blend with the background
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    TextFormField(
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your name';
    }
    return null;
    },
    decoration: InputDecoration(
    labelText: 'Name',
    prefixIcon: Icon(Icons.person),
    ),
    ),
    SizedBox(height: 10.0),
    TextFormField(
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your admission number';
    }
    return null;
    },
    decoration: InputDecoration(
    labelText: 'Admission No',
    prefixIcon: Icon(Icons.confirmation_number),
    ),
    ),
      SizedBox(height: 10.0),
      DropdownButtonFormField<String>(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select your department';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: 'Department',
          prefixIcon: Icon(Icons.business),
        ),
        items: [
          DropdownMenuItem(
            value: 'B.Tech 1st Year',
            child: Text('B.Tech 1st Year'),
          ),
          DropdownMenuItem(
            value: 'B.Tech 2nd Year',
            child: Text('B.Tech 2nd Year'),
          ),
          DropdownMenuItem(
            value: 'B.Tech 3rd Year',
            child: Text('B.Tech 3rd Year'),
          ),
          DropdownMenuItem(
            value: 'B.Tech 4th Year',
            child: Text('B.Tech 4th Year'),
          ),
          DropdownMenuItem(
            value: 'Mtech 1st Year',
            child: Text('mtech 1st Year'),
          ),
          DropdownMenuItem(
            value: 'Mtech 2nd Year',
            child: Text('Mtech 2nd Year'),
          ),
          DropdownMenuItem(
            value: 'MCA 1st Year',
            child: Text('MCA 1st Year'),
          ),
          DropdownMenuItem(
            value: 'MCA 2nd Year',
            child: Text('MCA 2nd Year'),
          ),
          DropdownMenuItem(
            value: 'MBA 1st Year',
            child: Text('MBA 1st Year'),
          ),
          DropdownMenuItem(
            value: 'MBA 2nd Year',
            child: Text('MBA 2nd Year'),
          ),
          // Add other dropdown menu items similarly
        ],
        onChanged: (String? value) {
          // Do something with the selected value
        },
      ),
      SizedBox(height: 10.0),
      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          prefixIcon: Icon(Icons.email),
        ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
      SizedBox(height: 10.0),
      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please confirm your password';
          }
          return null;
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
      SizedBox(height: 20.0),
      ElevatedButton(
        onPressed: () {
          if (_signUpFormKey.currentState!.validate()) {
            // If all validations pass
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterFee()),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blue,
        ),
        child: Text('Submit'),
      ),
    ],
    ),
    ),
    ],
    ),
    ),
          ),
      ),
    );
  }
}
