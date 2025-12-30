import 'package:flutter/material.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard Médico')),
      body: const Center(
        child: Text('Bem-vindo, Doutor'),
      ),
    );
  }
}
