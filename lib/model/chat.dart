import 'package:intl/intl.dart';

class Chat {
  String number;
  DateTime datetime;

  Chat({
    required this.number,
    required this.datetime,
  });

  String get dateString {
    return DateFormat('dd/MM/yy').format(datetime);
  }
}

var chatList = [
  Chat(
    number : '+62 8222-198-1945',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
  Chat(
    number : '+62 8222-198-1945',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
  Chat(
    number : '+62 8222-198-1945',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
];