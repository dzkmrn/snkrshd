import 'package:flutter/material.dart';
import 'package:snkrshd/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'images/logo.png',
                height: MediaQuery.of(context).size.height * 0.3,
                // Adjust the height of the logo based on the screen height
              ),
            ),
            const SizedBox(height: 10),
            // Title
            const Text(
              'SNKRSHD',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'We provide the best-qualified branded sneakers. Discover now and get your favorite sneakers!',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 18),
            // Start Now Button
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              // Adjust button width based on the screen width
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }),
                  );
                },
                child: const Text(
                  'Sneaks Now!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
