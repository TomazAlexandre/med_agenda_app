import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas de Hoje'),
        leading: const Hero(
          tag: 'logo',
          child: Icon(Icons.local_hospital),
        ),
      ),
      body: FadeSlide(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              _consultationCard(
                context,
                patient: 'Maria Oliveira',
                time: '09:00',
                status: 'Confirmada',
              ),
              _consultationCard(
                context,
                patient: 'Carlos Santos',
                time: '10:30',
                status: 'Aguardando',
              ),
              _consultationCard(
                context,
                patient: 'Ana Paula',
                time: '14:00',
                status: 'Confirmada',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _consultationCard(
    BuildContext context, {
    required String patient,
    required String time,
    required String status,
  }) {
    final Color statusColor =
        status == 'Confirmada' ? Colors.green : Colors.orange;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(patient),
        subtitle: Text('Horário: $time'),
        trailing: SizedBox(
          width: 72,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                status,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.green,
                ),
                onPressed: () => Navigator.pushNamed(context, '/call'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
