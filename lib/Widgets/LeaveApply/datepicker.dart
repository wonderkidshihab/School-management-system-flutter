import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onchanged;
  final Function(String?)? saved;
  final String? Function(String?)? validator;
  final String title;

  const CustomDatePicker(
      {super.key,
      required this.controller,
      this.onchanged,
      this.saved,
      this.validator,
      required this.title})
      ;
  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      type: DateTimePickerType.date,
      dateMask: 'dd/MM/yyyy',
      controller: controller,
      //initialValue: _initialValue,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      calendarTitle: "${title}",
      confirmText: "Confirm",
      enableSuggestions: true,
      //locale: Locale('en', 'US'),
      onChanged: onchanged,
      validator: validator,
      onSaved: saved,
    );
  }
}
