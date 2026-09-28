import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Performance'), backgroundColor: const Color(0xFF2A5298)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('LOREM IPSUM', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildBar(100),
                _buildBar(140),
                _buildBar(80),
                _buildBar(160),
                _buildBar(120),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(child: _buildStatCard('Lorem Ipsum', '30%', Colors.orange)),
                const SizedBox(width: 12),
                Expanded(child: _buildStatCard('Lorem Ipsum', '70%', const Color(0xFF2A5298))),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBar(double height) {
    return Container(
      width: 20,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFF2A5298),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildStatCard(String title, String percent, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(percent, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}