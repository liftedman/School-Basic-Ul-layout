import 'package:flutter/material.dart';

class CoursesCategories extends StatelessWidget {
  final String title, img, subtile;
  final int price;
  const CoursesCategories(
      {super.key,
      required this.title,
      required this.subtile,
      required this.img,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(8),
      width: 5,
      // height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.deepOrange.shade400.withOpacity(0.5),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.deepOrange.shade300.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.deepOrange.shade300.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ]),
              child: Image.asset(
                'assets/images/$img',
                height: 30,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text('welcome to the century of flutter'),
                Text(
                  subtile,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      '\$ $price',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text(
                      '\$ ${price + 10}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                        // fontStyle: FontStyle.italic,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(
            Icons.bookmark_add_outlined,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
