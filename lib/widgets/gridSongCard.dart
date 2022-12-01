import 'package:flutter/material.dart';

class GridSongCard extends StatelessWidget {
  const GridSongCard(
      {required this.image, required this.name, required this.artist});
  final String image;
  final String name;
  final String artist;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$name - $artist");
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
      ),
    );
  }
}