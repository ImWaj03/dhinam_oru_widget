import 'package:dhinam_oru_widget/carousel_view_widget.dart';
import 'package:flutter/material.dart';

class DhinamOruWidget extends StatelessWidget {
  const DhinamOruWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhinam Oru Widget',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: CarouselViewWidget(),
    );
  }
}
