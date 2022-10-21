import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jottings/create_account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //Buttons setting
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: const Color.fromRGBO(217, 97, 76, 1),
      minimumSize: const Size(88, 46),
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      textStyle: const TextStyle(fontSize: 20),
      //backgroundColor: Colors.blue[800],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Jottings',
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      // Sections that contains all of the body widget.
      body: Container(
        padding: const EdgeInsets.all(12),
        child: PageView(
          children: [
            Column(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bar.png'),
                  ),
                ),
                height: 197,
                width: 268,
              ),
              const Gap(10),
              Container(
                height: 50,
                //width: 180,
                alignment: Alignment.topCenter,
                child: const Text(
                  'World\'s Safest And Largest Digital Notebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Gap(5),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.topCenter,
                child: const Text(
                  'Jottings is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/note.png'),
                  ),
                ),
                height: 197,
                width: 268,
              ),
              const Gap(10),
              Container(
                height: 50,
                //width: 180,
                alignment: Alignment.topCenter,
                child: const Text(
                  'World\'s Safest And Largest Digital Notebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Gap(5),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.topCenter,
                child: const Text(
                  'Jottings is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/notepad.jpeg'),
                  ),
                ),
                height: 197,
                width: 268,
              ),
              const Gap(10),
              Container(
                height: 50,
                //width: 180,
                alignment: Alignment.topCenter,
                child: const Text(
                  'World\'s Safest And Largest Digital Notebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Gap(5),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.topCenter,
                child: const Text(
                  'Jottings is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          ],
        ),
      ),
      //Section for the bottom, this contains the buttons
      bottomSheet: Container(
        padding: const EdgeInsets.all(20),
        color: const Color.fromRGBO(248, 238, 226, 1),
        height: 150,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: style,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccount()),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
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
            ],
          ),
        ),
      ),
    );
  }
}
