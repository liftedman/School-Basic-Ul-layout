import 'package:education/screens/courses_cart.dart';
import 'package:education/screens/item_cartegories.dart';
import 'package:education/screens/items_in_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final categories = [
    "All Courses",
    "Graphic Design",
    "Web Development",
    "Mobile App Development",
    "Flutter Widget",
    "Dart Application & Syntax",
  ];

  ValueNotifier<int> isActiveItem = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: CircleAvatar(
              // backgroundColor: Colors.black,
              // foregroundColor: Colors.black,
              // radius: 20,
              backgroundImage: AssetImage("assets/images/programmer.png"),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  spreadRadius: 4,
                  color: Colors.deepOrange.shade300.withOpacity(0.2),
                  blurRadius: 5,
                )
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "what are searching for",
                hintStyle: TextStyle(
                  // fontWeight: FontWeight.w300,
                  color: Colors.black26,
                ),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black26,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 15,
            child: ValueListenableBuilder<int>(
                valueListenable: isActiveItem,
                builder: (context, active, _) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => isActiveItem.value = index,
                          child: ItemCategories(
                              title: categories[index],
                              isActive: active == index),
                        );
                      });
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Tutorial Guideline",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemInContainer(thumbnails: 'images.jpg'),
                ItemInContainer(thumbnails: 'programmer.png'),
                ItemInContainer(thumbnails: 'programmer_one.png'),
                ItemInContainer(thumbnails: 'programmer_hand.png'),
                ItemInContainer(thumbnails: 'boy_onpc.png'),
                ItemInContainer(thumbnails: 'code.webp'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Most Popular Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CoursesCategories(
            title: 'Flutter Development',
            img: 'multi_work.png',
            price: 60,
            subtile: 'development and creativity',
          ),
          const CoursesCategories(
            title: 'Mobile App development',
            img: 'programmer.png',
            price: 40,
            subtile: 'knowledge in building app',
          ),
          const CoursesCategories(
            title: 'HTML Fundamentals',
            img: 'programmer.png',
            price: 30,
            subtile: 'a 04 month leraning',
          ),
          const CoursesCategories(
            title: 'Software Development',
            img: 'programmer.png',
            price: 70,
            subtile: 'knowledge in building app',
          ),
        ],
      ),
    );
  }
}
