import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_budget_app/utils/expense_log.dart';
import 'package:table_calendar/table_calendar.dart';

final kToday = DateTime.now();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Column(
          children: [
            TableCalendar(
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true
              ),
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.

                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                // No need to call `setState()` here
                _focusedDay = focusedDay;
              },
            ),
            const Gap(20),
            const ExpenseLog(
              expenseTitle: "Grocery - Food",
              expenseAmount: "400.00",
              expenseDescription: "belcris run",
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
    );
  }
}
