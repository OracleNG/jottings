import 'package:flutter/material.dart';
import 'package:jottings/create_note.dart';
import 'package:jottings/home_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jottings'),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: Text(
              'Create a free account',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Join Jottings for free. Create and share unlimited notes with your friends.',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 32),
          const TextField(
            decoration: InputDecoration(
              alignLabelWithHint: false,
              labelText: 'Full Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          const TextField(
            decoration: InputDecoration(
              alignLabelWithHint: false,
              labelText: 'Email Address',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              alignLabelWithHint: false,
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(217, 97, 76, 1),
              minimumSize: const Size(88, 46),
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              textStyle: const TextStyle(fontSize: 20),
              //backgroundColor: Colors.blue[800],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateAccount()),
              );
            },
            child: const Text(
              'Create Account',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Already have an account?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(217, 97, 76, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jottings'),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: Text(
              'Log In',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'We are happy to have you back. Please login with your email to continue.',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 32),
          const TextField(
            decoration: InputDecoration(
              alignLabelWithHint: false,
              labelText: 'Email Address',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              alignLabelWithHint: false,
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(217, 97, 76, 1),
              minimumSize: const Size(88, 46),
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              textStyle: const TextStyle(fontSize: 20),
              //backgroundColor: Colors.blue[800],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AllNotes()),
              );
            },
            child: const Text(
              'Login',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateAccount()),
                );
              },
              child: const Text(
                'Don\'t have an account?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(217, 97, 76, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
