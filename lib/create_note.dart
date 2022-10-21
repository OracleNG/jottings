import 'package:flutter/material.dart';
import 'package:jottings/profile_page.dart';
import '';

class AllNotes extends StatefulWidget {
  const AllNotes({super.key});

  @override
  State<AllNotes> createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.notes),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'All Notes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(16)),
          const SizedBox(height: 20),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/notepad.jpeg'),
                ),
              ),
              height: 221,
              width: 268,
            ),
          ),
          const Text(
            'Create Your First Note',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(height: 56),
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
                MaterialPageRoute(builder: (context) => const CreateNote()),
              );
            },
            child: const Text(
              'Create A Note',
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
                  MaterialPageRoute(builder: (context) => const MakeNewNote()),
                );
              },
              child: const Text(
                'Import Notes',
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

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final enteredText = TextEditingController();
  String inputData = '';
  @override
  @override
  void initState() {
    super.initState();
    enteredText.addListener(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.notes),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfile()),
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Recent Notes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MakeNewNote()),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakeNewNote()),
                );
              },
              child: const Text(
                'Sample first note',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakeNewNote()),
                );
              },
              child: const Text(
                'Sample second note',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakeNewNote()),
                );
              },
              child: const Text(
                'Sample third note',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MakeNewNote()),
                );
              },
              child: const Text(
                'Sample fourth note',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class MakeNewNote extends StatefulWidget {
  const MakeNewNote({super.key});

  @override
  State<MakeNewNote> createState() => _MakeNewNoteState();
}

class _MakeNewNoteState extends State<MakeNewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'New Note',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfile()),
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: const TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          autofocus: true,
          textInputAction: TextInputAction.newline,
          cursorColor: Colors.pink,
          decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, style: BorderStyle.none),
            ),
          ),
        ),
      ),
    );
  }
}
