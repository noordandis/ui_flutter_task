import 'package:flutter/material.dart';

import '../widgets/calender_grid_widget.dart';
import '../widgets/schedule_hotel_card.dart';
import 'main_screen.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Text(
                    'Schedule',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: const Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'September 2024',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.chevron_left, color: Colors.grey),
                      SizedBox(width: 12),
                      Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const ['S', 'M', 'T', 'W', 'T', 'F', 'S']
                    .map(
                      (day) => Text(
                        day,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
              buildCalendarGrid(),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Schedule',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const ScheduleItemCard(
                imageUrl: 'https://images.unsplash.com/photo-1566073771259-6a8506099945',
                hotelName: 'The Aston Vill Hotel',
                date: '19 March 2024',
                price: '\$200.7 /night',
              ),
              const SizedBox(height: 12),
              const ScheduleItemCard(
                imageUrl: 'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b',
                hotelName: 'Golden Palace Hotel',
                date: '25 March 2024',
                price: '\$175.9 /night',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
