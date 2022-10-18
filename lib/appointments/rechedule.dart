import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Reschedule extends StatefulWidget {
  const Reschedule({Key? key}) : super(key: key);

  @override
  State<Reschedule> createState() => _RescheduleState();
}

class _RescheduleState extends State<Reschedule> {
  TimeOfDay _time = TimeOfDay.now().replacing(hour: 10, minute: 00);
  bool iosStyle = false;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
      print(_time);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Reschedule',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Select Date',style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Container(
                child: SfDateRangePicker(
                  minDate: DateTime.now(),
                  showActionButtons: true,
                  onSubmit:  (var value) {
                    print(value);
                  },
                  onCancel: () {
                    print('cancel');
                  },
                  selectionColor: Colors.red[900],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
              child: Text('Select Time',style: TextStyle(fontSize: 18),),
            ),
            createInlinePicker(
              elevation: 5,
              value: _time,
              onChange: onTimeChanged,
              minuteInterval: MinuteInterval.FIVE,
              iosStylePicker: true,
              minHour: 10,
              maxHour: 20,
              minMinute: 0,
              maxMinute: 59,
              is24HrFormat: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10.0,
                  minimumSize: Size(double.infinity, 40),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                onPressed: () {
                  //TODO: Add Reschedule Functionality
                },
                child: Text(
                  'Reschedule',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
