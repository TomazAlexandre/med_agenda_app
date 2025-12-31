import 'package:flutter/material.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Consulta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _info(Icons.person, 'Médico', item['doctor']!),
                const SizedBox(height: 12),
                _info(Icons.calendar_today, 'Data', item['date']!),
                const SizedBox(height: 12),
                _info(Icons.access_time, 'Hora', item['time']!),
                const SizedBox(height: 12),
                _info(Icons.info, 'Status', item['status']!),
                const Divider(height: 32),
                const Text(
                  'Observações',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Nenhuma observação'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _info(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 8),
        Text(
          '$label:',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(value)),
      ],
    );
  }
}
