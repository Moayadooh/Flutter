import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  //State<StatefulWidget> createState() {
  State<MyForm> createState() {
    return _MyForm();
  }
}

class _MyForm extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (ctx, index) => Dismissible(
                background: Container(
                  color: Theme.of(context).colorScheme.error.withOpacity(0.75),
                  // margin: EdgeInsets.symmetric(
                  //   horizontal: Theme.of(context).cardTheme.margin!.horizontal,
                  // ),
                ),
                key: const ValueKey(""),
                child: const Center(
                  child: Text("List Item"),
                ),
                onDismissed: (direction) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
