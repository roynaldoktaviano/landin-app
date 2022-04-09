import 'package:flutter/material.dart';
import 'package:landin/ui/widgets/seat_indicator.dart';
import 'package:landin/ui/widgets/seat_item.dart';

class RowSeats extends StatelessWidget {
  final String numberRow;
  final List stats;
  const RowSeats({Key? key, required this.numberRow, required this.stats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SeatItem(
          status: stats[0],
        ),
        SeatItem(
          status: stats[1],
        ),
        SeatIndicator(text: numberRow),
        SeatItem(
          status: stats[2],
        ),
        SeatItem(
          status: stats[3],
        ),
      ],
    );
  }
}
