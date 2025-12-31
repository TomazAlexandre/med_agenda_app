import 'package:flutter/material.dart';

import '../features/auth/login_page.dart';
import '../features/dashboard/doctor_dashboard.dart';
import '../features/dashboard/patient_dashboard.dart';
import '../features/schedule/schedule_page.dart';
import '../features/videocall/videocall_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (_) => const LoginPage(),
    '/doctor': (_) => const DoctorDashboard(),
    '/patient': (_) => const PatientDashboard(),
    '/schedule': (_) => const SchedulePage(),
    '/call': (_) => const VideoCallPage(),
  };
}
