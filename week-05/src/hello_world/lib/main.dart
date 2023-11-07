import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/date_and_time_pickers_widget.dart';
import 'package:hello_world/basic_widgets/dialog_widget.dart';
// import 'package:hello_world/basic_widgets/image_widget.dart';
import 'package:hello_world/basic_widgets/input_selection_widget.dart';
import 'package:hello_world/basic_widgets/scaffold_widget.dart';
// import 'package:hello_world/basic_widgets/text_widget.dart';

void main() {
  runApp(const HomePage(
    title: 'Home Page | Azis Ilham Kurniawan | 2141720145',
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: const Row(
        children: [
          Expanded(child: MyScaffoldWidget()),
          Expanded(child: MyDialogWidget()),
          Expanded(child: MyInputSelectionWidget()),
          Expanded(child: MyDateTimePickers()),
          // Expanded(child: MyTextWidget()),
          // Expanded(child: MyImageWidget()),
        ],
      ),
    );
  }
}
