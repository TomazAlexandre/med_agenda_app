import 'package:flutter/material.dart';
import '../../core/services/appointment_service.dart';
import '../../features/appointments/appointment_model.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = AppointmentService();

    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Consultas')),
      body: StreamBuilder<List<Appointment>>(
        stream: service.getHistory('patient_001'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Nenhuma consulta encontrada'));
          }

          final appointments = snapshot.data!;

          return ListView.builder(
            itemCount: appointments.length,
            itemBuilder: (context, i) {
              final a = appointments[i];

              return ListTile(
                title: Text(a.doctorName),
                subtitle: Text(a.date.toString()),
                trailing: Chip(label: Text(a.status)),
                onTap: () {
                  Navigator.pushNamed(context, '/details', arguments: a);
                },
              );
            },
          );
        },
      ),
    );
  }
}
