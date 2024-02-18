import 'package:education/screens/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 70,
              ),
              child: Text(
                'Learn Something',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 0),
            const Text(
              'New & Creative..',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Online study in any profession of your life. Online study in any profession of your life.Online study in any profession of your life.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange.shade300,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_right_alt_sharp,
              ),
              label: const Text(
                'Start Learn',
              ),
            ),
            // Container(
            //   height: 55,
            //   width: 160,
            //   decoration: BoxDecoration(
            //     // shape: BoxShape.circle,
            //     color: const Color.fromARGB(255, 253, 116, 74),
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   child: const Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 30.0),
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.arrow_right_alt_sharp,
            //           color: Colors.white,
            //         ),
            //         Text(
            //           'Start Learn',
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const Expanded(
              child: Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/character-people-read-book-png.webp',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
