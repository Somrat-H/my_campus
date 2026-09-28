import 'package:flutter/material.dart';

// Data model for grid items
class GridItemModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const GridItemModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}

class GridHomeScreen extends StatelessWidget {
  const GridHomeScreen({Key? key}) : super(key: key);

  // Helper method to show a SnackBar
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearSnackBars(); // Clear existing snackbars
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color(0xFF2A5298),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // List pairing icons, titles, and SnackBar callbacks
    final List<GridItemModel> gridItems = [
      GridItemModel(
        icon: Icons.calendar_month_rounded,
        title: 'Schedule',
        subtitle: 'Routine & Events',
        onTap: () => _showSnackBar(context, 'Schedule: Coming Soon!'),
      ),
      GridItemModel(
        icon: Icons.quiz_rounded,
        title: 'Quiz & Exam',
        subtitle: 'Practice Tests',
        onTap: () => _showSnackBar(context, 'Quiz & Exam: Coming Soon!'),
      ),
      GridItemModel(
        icon: Icons.show_chart_rounded,
        title: 'Analytics',
        subtitle: 'Attendance & Marks',
        onTap: () => _showSnackBar(context, 'Analytics: Coming Soon!'),
      ),
      GridItemModel(
        icon: Icons.play_circle_outline_rounded,
        title: 'Lectures',
        subtitle: 'Video Courses',
        onTap: () => _showSnackBar(context, 'Lectures: Coming Soon!'),
      ),
      GridItemModel(
        icon: Icons.menu_book_rounded,
        title: 'Courses',
        subtitle: 'Enrolled Subjects',
        onTap: () => _showSnackBar(context, 'Courses: Coming Soon!'),
      ),
      GridItemModel(
        icon: Icons.person_rounded,
        title: 'Profile',
        subtitle: 'Student Details',
        onTap: () => _showSnackBar(context, 'Profile: Coming Soon!'),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.school, size: 24, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'MyCampus Portal',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF2A5298),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () => _showSnackBar(context, 'No new notifications'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2A5298), Color(0xFF1E3C72)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white24,
                    child: Icon(Icons.person, color: Colors.white, size: 30),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome Back,',
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                      Text(
                        'Student Portal',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Quick Access Dashboard',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1E293B)),
            ),
            const SizedBox(height: 12),

            // Main Grid View
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 1.15,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final item = gridItems[index];
                return Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  elevation: 2,
                  shadowColor: Colors.black.withOpacity(0.06),
                  child: InkWell(
                    onTap: item.onTap,
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A5298).withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(item.icon, size: 30, color: const Color(0xFF2A5298)),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item.title,
                            style: const TextStyle(
                              color: Color(0xFF1E293B),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            item.subtitle,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 11,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}