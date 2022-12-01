import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class HomeAppBar extends StatelessWidget{
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('SENDMUSIC'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
    );;
  }

}