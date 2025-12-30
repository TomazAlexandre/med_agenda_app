import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agendar Consulta')),
      body: FadeSlide(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Especialidade',
                  prefixIcon: Icon(Icons.medical_services),
                ),
                items: const [
                  DropdownMenuItem(value: 'Cardio', child: Text('Cardiologia')),
                ],
                onChanged: (_) {},
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Data',
                  prefixIcon: Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Horário',
                  prefixIcon: Icon(Icons.schedule),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Confirmar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
