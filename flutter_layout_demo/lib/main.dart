import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              )
            ],
          ),
        ),
      ),
    );
  }
}

//https://docs.flutter.dev/ui/layout/tutorial#add-the-button-section
//https://docs.flutter.dev/ui/layout
