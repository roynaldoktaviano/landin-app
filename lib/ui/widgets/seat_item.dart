import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE : 0 - Unavailable , 1 : Selected, 2 : Available
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return seatUnavailable;
          break;
        case 1:
          return purpleColor;
        case 2:
          return seatAvailable;
        default:
          return seatUnavailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return seatUnavailable;
          break;
        case 1:
          return purpleColor;
        case 2:
          return purpleColor;
        default:
          return seatUnavailable;
      }
    }

    childChoosen() {
      switch (status) {
        case 0:
          return SizedBox();
          break;
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteFonts.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: childChoosen(),
    );
  }
}
