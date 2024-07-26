import 'package:flutter/material.dart';


class Signinpage extends StatelessWidget {

  final List<String> countryCodes = ['+1', '+44', '+49', '+81', '+86']; // Example country codes

  String selectedCountryCode = '+1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            Row(
              children: [
                DropdownButton<String>(
                  value: selectedCountryCode,
                  onChanged: (newValue) {
                    // Handle country code selection
                    selectedCountryCode = newValue!;
                  },
                  items: countryCodes.map((code) {
                    return DropdownMenuItem<String>(
                      value: code,
                      child: Text(code),
                    );
                  }).toList(),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'National ID'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Home Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle account creation logic here
              },
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
