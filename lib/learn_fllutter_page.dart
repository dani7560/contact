import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LearnFlutter"),
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        Image.asset("images/messi.jpg"),
        const SizedBox(
          height: 2,
        ),
        const Divider(
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: const EdgeInsets.all(30),
          width: double.infinity,
          color: Colors.green,
          child: const Center(
            child: Text(
              "is image of messi",
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint("click the button");
          },
          child: const Text("ElevatedButton"),
        )
      ]),
    );
  }
}
