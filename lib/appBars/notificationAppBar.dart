import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class NotificationAppBar extends StatelessWidget{
  const NotificationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Notifications'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
    );;
  }

}