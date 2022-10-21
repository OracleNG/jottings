import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PremiumPackage extends StatelessWidget {
  const PremiumPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          bottomOpacity: 0.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: const Text(
            'Jottings Premium',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ]),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Image.asset(
          'images/premium.png',
          alignment: Alignment.topCenter,
          width: 160,
          height: 120,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(),
          child: const Center(
            child: Text(
              'Start Using Jottings with Premium Benefits',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: const BoxDecoration(
            //shape: BoxShape.rectangle,
            color: Color.fromRGBO(248, 238, 226, 1),
          ),
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.check,
                color: Colors.black,
              ),
              Text('Daily backups to keep your data safe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: const BoxDecoration(
            //shape: BoxShape.rectangle,
            color: Color.fromRGBO(248, 238, 226, 1),
          ),
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.check,
                color: Colors.black,
              ),
              Text('Daily backups to keep your data safe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: const BoxDecoration(
            //shape: BoxShape.rectangle,
            color: Color.fromRGBO(248, 238, 226, 1),
          ),
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.check,
                color: Colors.black,
              ),
              Text('Daily backups to keep your data safe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: const BoxDecoration(
            //shape: BoxShape.rectangle,
            color: Color.fromRGBO(248, 238, 226, 1),
          ),
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.check,
                color: Colors.black,
              ),
              Text(
                'Daily backups to keep your data safe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 135,
                height: 135,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Annual \n \n \$79.99 \n  \n per year',
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(20),
              Container(
                width: 135,
                height: 135,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Monthly \n\n   \$7.99 \n\nper month',
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        const Gap(10),
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
          onPressed: () {},
          child: const Text(
            'SUBSCRIBE',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: InkWell(
            onTap: () {},
            child: const Text(
              'Restore Purchase',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(217, 97, 76, 1)),
            ),
          ),
        ),
      ]),
    );
  }
}
