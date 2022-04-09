import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landin/cubit/page_cubit.dart';
import '../../shared/theme.dart';

class ButtonNavbar extends StatelessWidget {
  final bool isSelected;
  final int index;
  final String imagUrl;
  const ButtonNavbar({
    Key? key,
    required this.index,
    required this.imagUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imagUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? purpleColor
                : grayColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? purpleColor
                  : transparant,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
        ],
      ),
    );
  }
}
