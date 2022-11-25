import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class ProfileInfoField extends StatelessWidget {
  const ProfileInfoField(
      {required this.number, required this.field});
  final String number;
  final String field;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number,style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),),
        const Padding(padding: EdgeInsets.only(top: 5)),
        Text(field,style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,),),
      ],
    );
  }
}
