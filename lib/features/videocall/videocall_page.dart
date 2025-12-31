import 'dart:async';
import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({super.key});

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  bool micOn = true;
  bool camOn = true;
  int seconds = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => seconds++);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String get timeFormatted {
    final m = seconds ~/ 60;
    final s = seconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FadeSlide(
        child: Stack(
          children: [
            // Fake camera background
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black87,
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.white24,
                ),
              ),
            ),

            // Top info
            Positioned(
              top: 48,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dr. João Silva',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    timeFormatted,
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Small preview
            Positioned(
              right: 16,
              bottom: 140,
              child: Container(
                width: 100,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.person, color: Colors.white54),
              ),
            ),

            // Controls
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _controlButton(
                    icon: micOn ? Icons.mic : Icons.mic_off,
                    color: micOn ? Colors.white : Colors.red,
                    onTap: () => setState(() => micOn = !micOn),
                  ),
                  _controlButton(
                    icon: Icons.call_end,
                    color: Colors.red,
                    onTap: () => Navigator.pop(context),
                  ),
                  _controlButton(
                    icon: camOn ? Icons.videocam : Icons.videocam_off,
                    color: camOn ? Colors.white : Colors.red,
                    onTap: () => setState(() => camOn = !camOn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _controlButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.white12,
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}
