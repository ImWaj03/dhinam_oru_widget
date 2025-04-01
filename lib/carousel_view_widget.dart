import 'package:flutter/material.dart';

class CarouselViewWidget extends StatelessWidget {
  CarouselViewWidget({super.key});

  final CarouselController _carouselController = CarouselController();

  List<String> listOfImages = [
    "dash-image-1.jpg",
    "dash-image-2.png",
    "dash-image-3.jpg",
    "dash-image-4.png",
    "dash-image-5.png",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height / 1.5, minWidth: width),
        child: CarouselView(
          elevation: 2.0,
          reverse: false,
          itemExtent: width,
          enableSplash: true,
          itemSnapping: true,
          padding: EdgeInsets.all(3.0),
          controller: _carouselController,
          scrollDirection: Axis.horizontal,
          shrinkExtent: double.minPositive,
          backgroundColor: Colors.transparent,
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          onTap: (value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(listOfImages[value]),
                duration: Duration(seconds: 3),
                showCloseIcon: true,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.lightBlue,
              ),
            );
          },
          children: List.generate(5, (index) {
            return SizedBox(
              width: width,
              height: height,
              child: Image.asset(listOfImages[index], fit: BoxFit.cover),
            );
          }),
        ),
      ),
    );
  }
}
