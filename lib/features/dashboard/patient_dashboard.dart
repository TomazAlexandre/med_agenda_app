import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class PatientDashboard extends StatelessWidget {
  const PatientDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Consultas'),
        leading: const Hero(
          tag: 'logo',
          child: Icon(Icons.local_hospital),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            tooltip: 'Histórico de Consultas',
            onPressed: () {
              Navigator.pushNamed(context, '/history');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/schedule'),
        label: const Text('Agendar'),
        icon: const Icon(Icons.add),
      ),
      body: FadeSlide(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: const Text('Dr. João Silva'),
              subtitle: const Text('10/01 às 14h'),
              trailing: IconButton(
                icon: const Icon(Icons.video_call, color: Colors.green),
                onPressed: () => Navigator.pushNamed(context, '/call'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
