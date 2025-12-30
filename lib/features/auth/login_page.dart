import 'package:flutter/material.dart';
import '../../core/widgets/fade_slide.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userType = 'Paciente';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeSlide(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Icon(Icons.local_hospital,
                    size: 80, color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 16),
              SegmentedButton(
                segments: const [
                  ButtonSegment(value: 'Paciente', label: Text('Paciente')),
                  ButtonSegment(value: 'Medico', label: Text('Médico')),
                ],
                selected: {userType},
                onSelectionChanged: (v) => setState(() => userType = v.first),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      userType == 'Paciente' ? '/patient' : '/doctor',
                    );
                  },
                  child: const Text('Entrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
