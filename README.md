# 🏥 Med Agenda App

Aplicativo de **telemedicina** desenvolvido em **Flutter**, focado em agendamento de consultas médicas e videochamadas, com suporte a **paciente** e **médico**.

Projeto construído como **MVP**, com navegação completa e interfaces mockadas, ideal para validação de ideia, apresentações ou evolução futura com backend.

---

## 📱 Funcionalidades

### 👤 Paciente
- Login (mock)
- Visualização de consultas
- Agendamento de consultas
- Acesso à videochamada

### 🩺 Médico
- Dashboard com consultas do dia
- Status das consultas
- Acesso à videochamada

### 🎥 Videochamada (Mock)
- Interface simulada
- Controles de microfone e câmera
- Timer de chamada

---

## 🧱 Arquitetura do Projeto

```text
lib/
 ├─ main.dart
 ├─ app.dart
 ├─ core/
 │   ├─ routes.dart
 │   ├─ theme.dart
 │   └─ widgets/
 │       └─ fade_slide.dart
 └─ features/
     ├─ auth/
     │   └─ login_page.dart
     ├─ dashboard/
     │   ├─ patient_dashboard.dart
     │   └─ doctor_dashboard.dart
     ├─ schedule/
     │   └─ schedule_page.dart
     └─ videocall/
         └─ videocall_page.dart
