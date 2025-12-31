import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class ConsultationDetailPage extends StatelessWidget {
  const ConsultationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Consulta'),
      ),
      body: FadeSlide(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _info('Médico', data['doctor']!),
              _info('Data', data['date']!),
              _info('Horário', data['time']!),
              _info('Status', data['status']!),
              const SizedBox(height: 32),
              const Text(
                'Observações',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Consulta realizada com sucesso. Paciente apresentou melhora no quadro clínico.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _info(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
