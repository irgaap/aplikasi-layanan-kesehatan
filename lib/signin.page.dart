import 'package:apk_kesehatan/login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24.0),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.black, // Warna latar belakang container
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Menghilangkan warna latar bawaan ElevatedButton
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  // Logic untuk menyimpan data atau proses sign up
                  // Contoh:
                  // Navigator.pushNamed(context, '/home'); // Pindah ke halaman home setelah sign up
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white, // Warna teks "Sign Up"
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}