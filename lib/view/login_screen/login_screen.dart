import 'package:flutter/material.dart';
import 'package:telegram_app/view/bottom_nav_screen/bottom_nav_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String countryCode = '+91';
  bool syncContacts = true;
  final TextEditingController phoneNumberController = TextEditingController();

  void verifyPhoneNumber() {
    String phoneNumber = phoneNumberController.text;
    // Simple validation: Check if the phone number has 10 digits
    if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
      // Phone number is valid, navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavScreen(),
        ),
      );
    } else {
      // Phone number is not valid, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter a valid 10-digit phone number.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Phone')),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.blue,
            size: 20,
          ),
          onPressed: () {
            // Add cancel functionality here
          },
        ),
        actions: [
          TextButton(
            onPressed: verifyPhoneNumber,
            child: Text(
              'Next',
              style: TextStyle(color: Colors.blue, fontSize: 17),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please confirm your country code and enter your phone number.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                DropdownButton<String>(
                  value: countryCode,
                  items: <String>['+1', '+91', '+44', '+81', '+61']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      countryCode = newValue!;
                    });
                  },
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Your phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sync Contacts'),
                Switch(
                  value: syncContacts,
                  onChanged: (bool value) {
                    setState(() {
                      syncContacts = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
