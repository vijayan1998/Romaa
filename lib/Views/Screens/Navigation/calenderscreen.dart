import 'package:flutter/material.dart';
import 'package:romaa/Views/Utilies/image.dart';
import 'package:romaa/Views/Utilies/sizedbox.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
   DateTime _focusedDay = DateTime.now();
      DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             48.vspace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Appimage.menu),
                    16.hspace,
                    Text('Calendar',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20
                        ),),
                        Spacer(),
                  IconButton(onPressed: (){}, icon: Image.asset(Appimage.add))
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.withValues(alpha: 0.25),
              ),
              TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day should be marked as selected.
                // This returns true when `_selectedDay` is not null and is the same day as `day`.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` to make the calendar focus on the selected day.
                });
              },
              calendarFormat: CalendarFormat.month, // You can change this to week or twoWeeks
              headerStyle: HeaderStyle(
                formatButtonVisible: false, // Hide the format change button
                titleCentered: true,
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
              24.vspace,
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Text('Tuesday, Aug 12',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold
                    ),),
               ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.calenderimg),
                    title: Text('Design Review',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('09:00 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A)
                    ),),
                    trailing: Image.asset(Appimage.rightarrow),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.calenderimg),
                    title: Text('Material Request Approval',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('11:00 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A)
                    ),),
                    trailing: Image.asset(Appimage.rightarrow),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.calenderimg),
                    title: Text('Client Call',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('02:00 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A)
                    ),),
                    trailing: Image.asset(Appimage.rightarrow),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.calenderimg),
                    title: Text('Purchase Order Follow-up',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('04:30 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A)
                    ),),
                    trailing: Image.asset(Appimage.rightarrow),
                  ),
                   ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Image.asset(Appimage.calenderimg),
                    title: Text('Team Dinner',style: Theme.of(context).textTheme.bodyLarge),
                    subtitle: Text('07:00 AM',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xff61758A)
                    ),),
                    trailing: Image.asset(Appimage.rightarrow),
                  ),
                ],
              ),)
          ],
        ),
      ),
    );
  }
}