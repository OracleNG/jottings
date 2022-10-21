import 'package:flutter/material.dart';
import 'package:jottings/premiun_page.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          'Jottings',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Image.asset(
            'images/profile.png',
            alignment: Alignment.topCenter,
            width: 160,
            height: 160,
          ),
          const Center(
            child: Text(
              'Adekunle Ciroma',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Akure, Nigeria',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PremiumPackage()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.monetization_on,
                    color: Color.fromRGBO(217, 97, 76, 1),
                  ),
                  Text('Buy Premium',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(217, 97, 76, 1),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.edit,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
                Text('Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.blur_circular_outlined,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
                Text('App Theme',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
                Text('Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.security,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
                Text('Security',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            padding: const EdgeInsets.all(8.0),
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.logout,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
                Text('Sign Out',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    )),
                Icon(
                  Icons.arrow_forward,
                  color: Color.fromRGBO(217, 97, 76, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
