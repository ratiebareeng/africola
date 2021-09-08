import 'package:intl/intl.dart';

class TimeUtil {
  static String classTag = '### TimeUtil: => ';
  static final DateFormat simpleDateFormat =
      DateFormat('HH:mm dd MMM yy'); //kk:mm:ss
  static final DateFormat simpleDateFormat2 = DateFormat('HH:mm, E, dd MMM yy');
  static final DateFormat simpleDateFormat3 = DateFormat('dd MMM yyy');
  static final DateFormat simpleDateFormat5 = DateFormat('dd MMMM yyy');
  static final DateFormat simpleDateFormat4 = DateFormat('dd MMM');
  static final DateFormat simpleDateFormat6 = DateFormat('HH:mm, dd MMM');

  static String getDateDMY(String orderTimestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(orderTimestamp));

    return simpleDateFormat3.format(date);
  }

  static String getDateDMMY(String orderTimestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(orderTimestamp));

    return simpleDateFormat5.format(date);
  }

  static String getDayMonth(String orderTimestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(orderTimestamp));

    return simpleDateFormat4.format(date);
  }

  static String getWeekDayRange(List<int> weekDays) {
    var dayOne = DateTime.fromMillisecondsSinceEpoch(weekDays[0]);
    var daySeven = DateTime.fromMillisecondsSinceEpoch(weekDays[6]);

    return simpleDateFormat4.format(dayOne) +
        ' - ' +
        simpleDateFormat4.format(daySeven);
  }

  static String getDateTime(String orderTimestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(orderTimestamp));

    return simpleDateFormat.format(date);
  }

  static String getDateTimeDay(String orderTimestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(orderTimestamp));

    return simpleDateFormat6.format(date);
  }

  static String getPrice(double total) => NumberFormat.currency(
        locale: 'en_BW',
        symbol: 'P',
        name: 'BWP',
      ).format(total);
  // add leading 0 to times under 10
  static String formatTimePart(int timePart) =>
      timePart < 10 ? '0' + timePart.toString() : timePart.toString();

  static String mergeHourToMinute(
          {required String hour, required String minute}) =>
      hour + ':' + minute;
}
