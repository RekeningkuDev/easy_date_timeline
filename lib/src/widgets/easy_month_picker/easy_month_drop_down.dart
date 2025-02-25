import 'package:flutter/material.dart';

import '../../models/easy_month.dart';
import '../../utils/utils.dart';

/// A widget that displays a drop-down list of months.
class EasyMonthDropDown extends StatelessWidget {
  const EasyMonthDropDown({
    super.key,
    this.value,
    this.onMonthChange,
    required this.locale,
    this.style,
  });

  /// The currently selected month.
  final EasyMonth? value;

  /// A callback function that is called when the selected month changes.
  final OnMonthChangeCallBack? onMonthChange;

  /// A `String` that represents the locale code to use for formatting the month names in the drop-down list.
  final String locale;

  /// The text style applied to the month string.
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<EasyMonth>(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            EasyConstants.monthDropDownRadius,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        elevation: EasyConstants.monthDropDownElevation,
        value: value,
        style: const TextStyle(
          color: Color(0xFF161B22),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        dropdownColor: Colors.white,
        items: EasyDateUtils.getYearMonths(DateTime.now(), locale)
            .map(
              (month) => DropdownMenuItem<EasyMonth>(
                value: month,
                child: Text(" ${month.name} ${DateTime.now().year.toString()}"),
              ),
            )
            .toList(),
        onChanged: onMonthChange,
        icon: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }
}
