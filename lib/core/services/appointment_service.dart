import 'package:cloud_firestore/cloud_firestore.dart';
import '../../features/appointments/appointment_model.dart';

class AppointmentService {
  final _db = FirebaseFirestore.instance;

  Stream<List<Appointment>> getHistory(String patientId) {
    return _db
        .collection('appointments')
        .where('patientId', isEqualTo: patientId)
        .orderBy('date', descending: true)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map(Appointment.fromFirestore).toList());
  }
}
