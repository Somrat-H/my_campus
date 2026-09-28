import '../models/schedule_item.dart';
import '../models/attendance_item.dart';

class CampusRepository {
  List<ScheduleItem> getSchedules() {
    return const [
      ScheduleItem(id: '1', subject: 'Data Structures & Algorithms', code: 'CSE-201', time: '09:00 AM - 10:30 AM', room: 'Lab 302'),
      ScheduleItem(id: '2', subject: 'Software Engineering', code: 'CSE-305', time: '11:00 AM - 12:30 PM', room: 'Room 405'),
      ScheduleItem(id: '3', subject: 'Database Systems', code: 'CSE-208', time: '02:00 PM - 03:30 PM', room: 'Lab 101'),
    ];
  }

  List<AttendanceItem> getAttendance() {
    return const [
      AttendanceItem(subject: 'Data Structures', percentage: 88.0),
      AttendanceItem(subject: 'Software Engineering', percentage: 75.0),
      AttendanceItem(subject: 'Database Systems', percentage: 92.0),
    ];
  }
}