import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Vikashi Vini'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem(child: Icon(Icons.favorite, color: AppColors.primaryLight,),)
          ],
        ),
      ],
    );
  }

}

/*
AppBar(
      title: const Text('Vikashi Vini'),
      centerTitle:  true,
      backgroundColor: AppColors.primaryDark,
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem(child: Icon(Icons.favorite, color: AppColors.primaryLight,),)
          ],
        ),
      ],
    );
*/