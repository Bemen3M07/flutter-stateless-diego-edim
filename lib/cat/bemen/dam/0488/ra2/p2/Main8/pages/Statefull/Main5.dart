import 'package:flutter/material.dart';

class Main5 extends StatefulWidget {
  const Main5({super.key});

  @override
  State<Main5> createState() => _Main5State();
}

class _Main5State extends State<Main5> {
  int scoreLeft = 0;
  int scoreRight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main5')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$scoreLeft',
                  style: const TextStyle(fontSize: 26),
                ),
                const SizedBox(width: 40),
                Text(
                  '$scoreRight',
                  style: const TextStyle(fontSize: 26),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreLeft++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3A4F7A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Score'),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreRight++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3A4F7A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Score'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
