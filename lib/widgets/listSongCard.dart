import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';
import 'package:send_music/util/dimensions.dart';


class ListSongCard extends StatelessWidget {
  const ListSongCard(
      {required this.image, required this.name, required this.artist});
  final String image;
  final String name;
  final String artist;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.navBar,
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),

      height: 50,
      padding: const EdgeInsets.all(Dimen.padding5),
      child: Row(
          children: [
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(image),
                //'https://picsum.photos/250?image=9'
            ),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: Dimen.smallMargin,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold,),
                      ),
                      const Divider(height: 5, thickness: 3,),
                      Text(artist,
                          style: const TextStyle(fontSize: 12, color: AppColors.secondaryLight)
                      ),
                    ],
                  ),
                )),
            IconButton(onPressed: ()=>{print('Item will be deleted')}, icon: const Icon(Icons.close, color: AppColors.danger,))
          ],
        ),

    );
  }
}