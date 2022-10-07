import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset('assets/lottie/programmer.json', width: 200),
                  const SizedBox(height: 15),
                  const Text('Loading your favorite courses'),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey[500],
                      minHeight: 2,
                      color: const Color(0xFFFC6682),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Expanded(child: Container()),
                const Text(
                  '© 2022 Gabriel Țintărescu',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
                const SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
