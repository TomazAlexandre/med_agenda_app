import 'package:flutter/material.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Center(
            child: Icon(Icons.person, size: 160, color: Colors.white24),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOut,
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _btn(Icons.mic, Colors.white),
                _btn(Icons.videocam, Colors.white),
                _btn(Icons.call_end, Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _btn(IconData icon, Color color) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white12,
      child: Icon(icon, color: color),
    );
  }
}
