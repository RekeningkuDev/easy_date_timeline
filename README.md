# EasyDateTimeline
<a href="https://pub.dev/packages/easy_date_timeline"><img src="https://img.shields.io/pub/v/easy_date_timeline.svg" alt="Pub"></a>
 <a href="https://pub.dev/packages/easy_date_timeline/score"><img src="https://img.shields.io/pub/likes/easy_date_timeline?logo=flutter" alt="Pub likes"></a>
  <a href="https://pub.dev/packages/easy_date_timeline/score"><img src="https://img.shields.io/pub/popularity/easy_date_timeline?logo=flutter" alt="Pub popularity"></a>
  <a href="https://pub.dev/packages/easy_date_timeline/score"><img src="https://img.shields.io/pub/points/easy_date_timeline?logo=flutter" alt="Pub points"></a>



The "easy_date_timeline" package is a customizable Flutter library that displays a timeline of dates in a horizontal view.

<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/easy_date_timeline.jpg"/>
</p>
<!-- <p>
 <img src="https://github.com/FadyFayezYounan/easy_date_timeline/blob/master/screenshots/example_1.jpg"/>
</p> -->

## How To Use

Import the following package in your dart file

```dart
import 'package:easy_date_timeline/easy_date_timeline.dart';
```
## Usage

Use the `EasyDateTimeLine` Widget

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
    ),
```

## Features
* `Dynamic Text Color` : The "easy_date_timeline" package automatically adjusts the text color of the active day based on the active color. If the active color is a dark color, the text color will be light, and if the active color is a light color, the text color will be dark. This ensures that the text is always easy to read and contrasts well with the background color.
* `Customizable Item Builder` : The "easy_date_timeline" package provides an item builder that allows for full customization of the timeline items. With the item builder, developers can customize the appearance and behavior of each date item in the timeline, including the text, background color,etc..
> **IMPORTANT NOTE:**
>
> When utilizing the `itemBuilder`, it is essential to provide the width of each day for the date timeline widget.
>
   For example:
  ```dart
   dayProps: const EasyDayProps(
    // You must specify the width in this case.
    width: 124.0,
   ),
   
   ``` 
> [See itemBuilder example](#itemBuilder-example)

* `Locale Support` : The "easy_date_timeline" package supports locale, allowing developers to display the timeline in different languages and formats based on the user's device settings. This feature ensures that the package can be used in a variety of international contexts and provides a seamless user experience for users around the world.


## Custom background

Use the `activeDayProps` in `dayProps` that contains decoration
for the active day.

<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/custom_background_example.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        selectedDateFormat: SelectedDateFormat.fullDateDMY,
      ),
      dayProps: const EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff3371FF),
                Color(0xff8426D6),
              ],
            ),
          ),
        ),
      ),
    )
```
## Change current day highlight color and style

in the `dayProps` you can set `todayHighlightStyle` to :
* `TodayHighlightStyle.withBackground` : Set a background color for the current day. 
* `TodayHighlightStyle.withBorder` : Set just a colored border for the current day. 
* `TodayHighlightStyle.none` : Remove the highlight from the current day.
by default the highlight color equal to primary color with opacity of 20%.
to change the highlight color you can use `todayHighlightColor` and set your own color.

<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/change_today_highlight_color_and_style.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: const Color(0xff85A389),
      dayProps: const EasyDayProps(
        todayHighlightStyle: TodayHighlightStyle.withBackground,
        todayHighlightColor: Color(0xffE1ECC8),
      ),
    )
```
> **NOTE:**
> When you provide an `inactiveDay.decoration` to the EasyDateTimeline widget, it will override the current day highlight feature. 
> 


## Change day structure

In the `dayProps` change the `dayStructure` to:
* `DayStructure.dayNumDayStr` : show the current day number then current day name.
* `DayStructure.dayStrDayNum` : show the current name then current day number.
* `DayStructure.monthDayNumDayStr` : show current month name then the current day number finally current day name.
* `DayStructure.dayNumberOnly` : show only current day number.
* `DayStructure.dayNameOnly` : show only current day name.
* `DayStructure.dayStrDayNumMonth` : show current day name then the current day number finally current moth name.

<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/change_day_structure_example.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: const Color(0xffFFBF9B),
      headerProps: const EasyHeaderProps(
        selectedDateFormat: SelectedDateFormat.monthOnly,
      ),
      dayProps: const EasyDayProps(
        height: 56.0,
        width: 56.0,
        dayStructure: DayStructure.dayNumDayStr,
        inactiveDayStyle: DayStyle(
          borderRadius: 48.0,
          dayNumStyle: TextStyle(
            fontSize: 18.0,
          ),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    )
```
## Locale support

With `easy_date_timeline`, you can display dates and timelines in your preferred language and format. Simply pass the locale parameter with the appropriate language code and region as a value. For example, if you want to display the dates in Arabic, you can set the locale parameter to "ar". The package's support for localization allows you to provide a better user experience for users around the world by displaying text and information in their preferred language and format.
<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/locale_support_example.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: const Color(0xffB04759),
      locale: "ar",
    );
```
## Landscape view

With `easy_date_timeline`, you can display dates and timelines in landscape view just set
`landScapeMode` to `true` in `dayProps`.
<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/landscape_view_example_2.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: const Color(0xff116A7B),
      dayProps: const EasyDayProps(
        landScapeMode: true,
        activeDayStyle: DayStyle(
          borderRadius: 48.0,
        ),
        dayStructure: DayStructure.dayStrDayNum,
      ),
      headerProps: const EasyHeaderProps(
        selectedDateFormat: SelectedDateFormat.fullDateDMonthAsStrY,
      ),
    )
```


## Change header appearance

In the `headerProps` change the `monthPickerType` to:
* `MonthPickerType.switcher` : show the month and you can change month by clicking the arrow buttons.
* `MonthPickerType.dropDown` : show the month and you can change month from a dropdown menu.
also in the `headerProps` change the `selectedDateFormat` to:
* `SelectedDateFormat.fullDateDMY` : show the data as:"11/06/2023"
* `SelectedDateFormat.fullDateMDY` : show the data as:"06/11/2023"
* `SelectedDateFormat.fullDateDayAsStrMY` : show the data as:"Sunday 6,2023"
* `SelectedDateFormat.fullDateDMonthAsStrY` : show the data as:"11 June,2023"
* `SelectedDateFormat.fullDateMonthAsStrDY` : show the data as:"June 11,2023"
* `SelectedDateFormat.dayOnly` : show only the selected day as:"Sunday"
* `SelectedDateFormat.monthOnly` : show only the selected month as:"June"

<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/change_header_appearance_example.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: const Color(0xff37306B),
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        selectedDateFormat: SelectedDateFormat.fullDateDayAsStrMY,
      ),
      dayProps: const EasyDayProps(
        activeDayStyle: DayStyle(
          borderRadius: 32.0,
        ),
        inactiveDayStyle: DayStyle(
          borderRadius: 32.0,
        ),
      ),
      timeLineProps: const EasyTimeLineProps(
        hPadding: 16.0, // padding from left and right
        separatorPadding: 16.0, // padding between days
      ),
    )
```
<a id="itemBuilder-example"></a>
## Customize day appearance
> **IMPORTANT NOTE:**
>
> When utilizing the `itemBuilder`, it is essential to provide the width of each day for the date timeline widget.
>
* For example:
 ```dart
   dayProps: const EasyDayProps(
    // You must specify the width in this case.
    width: 124.0,
   ),
 ``` 

You can use the `itemBuilder` to customize the appearance of the day widget.
The `itemBuilder` provides the following:
* `BuildContext context`.
* `String dayNumber` : the day number ex: "11".
* `String dayName` : the day name ex: "Sunday".
* `String monthName` : the month name ex: "June".
* `DateTime fullDate` : the full date of the day for fully customization.
* `bool isSelected` : whether the day is selected or not.


<p>
 <img src="https://raw.githubusercontent.com/FadyFayezYounan/easy_date_timeline/master/screenshots/customize_day_appearance_example.jpg"/>
</p>

```dart
    EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      dayProps: const EasyDayProps(
        height: 56.0,
        // You must specify the width in this case.
        width: 124.0,
      ),
      headerProps: const EasyHeaderProps(
        selectedDateFormat: SelectedDateFormat.fullDateMonthAsStrDY,
      ),
      itemBuilder: (BuildContext context, String dayNumber, dayName, monthName,
          fullDate, isSelected) {
        return Container(
          //the same width that provided previously.
          width: 124.0,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xffFF6D60) : null,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                monthName,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? Colors.white : const Color(0xff6D5D6E),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                dayNumber,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : const Color(0xff393646),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                dayName,
                style: TextStyle(
                  fontSize: 12,
                  color: isSelected ? Colors.white : const Color(0xff6D5D6E),
                ),
              ),
            ],
          ),
        );
      },
    )
```

##### Constructor:

```dart
  EasyDateTimeLine({
    super.key,
    required this.initialDate,
    this.activeColor,
    this.headerProps,
    this.timeLineProps,
    this.dayProps,
    this.onDateChange,
    this.itemBuilder,
    this.locale = "en_US",
  });
```

Author
------

* [Fady Fayez](https://github.com/FadyFayezYounan)
