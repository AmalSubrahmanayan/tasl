import 'package:assignment/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MapBody extends StatelessWidget {
  const MapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackColor,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
    );
  }
}
