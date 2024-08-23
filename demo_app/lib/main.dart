import 'package:demo_app/button_section.dart';
import 'package:demo_app/image_section.dart';
import 'package:demo_app/text_section.dart';
import 'package:demo_app/title_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Demo'),
          ),
        ),
        //SingleChildScrollView
        body: const Column(
          children: [
            ImageSection(
              image: 'images/lake.jpg',
            ),
            TitleSection(),
            ButtonSection(),
            TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.'),
          ],
        ),
      ),
    ),
  );
}
