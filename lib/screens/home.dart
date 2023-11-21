import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileScreen(
                              appBar: AppBar(
                                title: const Text("User Profile"),
                              ),
                              actions: [
                                SignedOutAction((context) {
                                  Navigator.of(context).pop();
                                })
                              ],
                              children: [
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Image.network(
                                        "https://github.com/flutter/codelabs/blob/main/firebase-auth-flutterfire-ui/complete/assets/flutterfire_300x.png?raw=true"),
                                  ),
                                )
                              ],
                            )));
              },
              icon: const Icon(Icons.person))
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        children: [
          Image.network(
              "https://github.com/flutter/codelabs/blob/main/firebase-auth-flutterfire-ui/complete/assets/dash.png?raw=true"),
          Text(
            "Welcome",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SignOutButton(),
        ],
      )),
    );
  }
}
