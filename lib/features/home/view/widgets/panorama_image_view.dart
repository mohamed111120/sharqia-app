import 'package:flutter/material.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class PanoramaImageView extends StatelessWidget {
  const PanoramaImageView({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PanoramaViewer(
          child: Image.asset(image),
        ),
      ),
    );
  }
}
