import 'package:cloud_firestore/cloud_firestore.dart';

class Appointment {
  final String id;
  final String doctorName;
  final DateTime date;
  final String status;
  final String notes;

  Appointment({
    required this.id,
    required this.doctorName,
    required this.date,
    required this.status,
    required this.notes,
  });

  factory Appointment.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return Appointment(
      id: doc.id,
      doctorName: data['doctorName'],
      date: (data['date'] as Timestamp).toDate(),
      status: data['status'],
      notes: data['notes'] ?? '',
    );
  }
}
