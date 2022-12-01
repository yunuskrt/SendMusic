import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class ExploreAppBar extends StatelessWidget{
  const ExploreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Explore'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
    );
  }

}