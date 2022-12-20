import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCardReservasDia extends StatefulWidget {
  const CustomCardReservasDia({super.key});

  @override
  State<CustomCardReservasDia> createState() => _CustomCardReservasDiaState();
}

class _CustomCardReservasDiaState extends State<CustomCardReservasDia> {

  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            TableCalendar(
              focusedDay: selectedDay, 
              firstDay: DateTime(1990), 
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  
                });
                format = _format;
              },
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekVisible: true,
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
                print(focusDay);
              },
              calendarStyle: const CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.circle,
                )
              ),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                formatButtonShowsNext: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(5)
                ),
                formatButtonTextStyle: const TextStyle(
                  color: Colors.white,
                ),
                leftChevronVisible: false,
                rightChevronVisible: false,
                headerPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10)
              ),
            )
          ],
        ),
      ),
    );
  }
}