import 'package:flutter/material.dart';

Widget buildCalendarGrid() {
  List<List<String>> weeks = [
    ['26', '27', '28', '29', '30', '31', '1'],
    ['2', '3', '4', '5', '6', '7', '8'],
    ['9', '10', '11', '12', '13', '14', '15'],
    ['16', '17', '18', '19', '20', '21', '22'],
    ['23', '24', '25', '26', '27', '28', '29'],
    ['30', '31', '1', '2', '3', '4', '5'],
  ];
  return Column(
    children: weeks.asMap().entries.map((weekEntry) {
      int weekIndex = weekEntry.key;
      List<String> week = weekEntry.value;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: week.asMap().entries.map((dayEntry) {
            String day = dayEntry.value;
            bool isSelected19 = (day == '19' && weekIndex == 3);
            bool isSelected25 = (day == '25' && weekIndex == 4);

            Color textColor = Colors.black87;
            BoxDecoration? decoration;

            if (isSelected19 || isSelected25) {
              textColor = Colors.white;
              decoration = const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              );
            } else {
              bool isDimmed =
                  (weekIndex == 0 && int.parse(day) > 20) ||
                  (weekIndex == 5 && int.parse(day) < 10);
              if (isDimmed) {
                textColor = Colors.grey.shade400;
              }
            }
            return Container(
              width: 32,
              height: 32,
              decoration: decoration,
              alignment: Alignment.center,
              child: Text(
                day,
                style: TextStyle(
                  color: textColor,
                  fontWeight: (isSelected19 || isSelected25)
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 13,
                ),
              ),
            );
          }).toList(),
        ),
      );
    }).toList(),
  );
}
