import 'package:intl/intl.dart';

class Order {
  String place;
  String status;
  DateTime datetime;

  Order({
    required this.place,
    required this.status,
    required this.datetime,
  });

  String get datetimeString {
    return DateFormat('yyyy-MM-dd – kk:mm').format(datetime);
  }
}

var orderList = [
  Order(
    place: 'PREMIER PAVILION',
    status: 'Package delivered',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
  Order(
    place: 'PREMIER PAVILION',
    status: 'Package delivered',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
  Order(
    place: 'PREMIER PAVILION',
    status: 'Order cancelled',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
  Order(
    place: 'PREMIER PAVILION',
    status: 'Order cancelled',
    datetime: DateTime.parse('2020-01-02 03:04:05'),
  ),
];