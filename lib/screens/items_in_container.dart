import 'package:flutter/material.dart';

class ItemInContainer extends StatelessWidget {
  final String thumbnails;
  const ItemInContainer({super.key, required this.thumbnails});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.deepOrange.shade300,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/$thumbnails",
          ),
        ),
      ),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.4),
            color: Colors.deepOrange.shade300.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 0,
          )
        ]),
        child: Container(
          margin: const EdgeInsets.all(60),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.8),
            // borderRadius: BorderRadius.circular(80),
          ),

          //giving my button functionality
          // child: IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.play_arrow,
          //     size: 30,
          //   ),

          //oridinary button with no functionality.
          child: const Icon(
            Icons.play_arrow,
            size: 30,
          ),
        ),
      ),
    );
  }
}
