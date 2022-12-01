import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class DownloadsAppBar extends StatelessWidget{
  const DownloadsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Saved'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
    );
  }

}