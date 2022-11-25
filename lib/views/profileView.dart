import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';
import 'package:send_music/util/dimensions.dart';
import 'package:send_music/widgets/navBar.dart';
import 'package:send_music/widgets/profileInfoField.dart';
import 'package:send_music/widgets/listSongCard.dart';



class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with TickerProviderStateMixin{
  late TabController _tabController;
  final List<String> songNames = <String>['Master Of Puppets','Wish You Were Here', 'Gates Of Babylon','Duel Of Fate','Yürekten','November Rain','Tek Gecelik','Bohemian Rhapsody', 'Jocelyn Flores'];
  final List<String> artistNames = <String>['Metallica','Pink Floyd','Rainbow','John Williams','Duman',"Guns N' Roses","Hayko Cepkin","Queen","XXXTENTACION"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
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
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
              ),
              const Padding(padding: EdgeInsets.only(top: Dimen.regularPadding)),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.only(left: Dimen.regularPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ProfileInfoField(number: '123', field: 'Shares'),
                    Text('|',style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,),),
                    ProfileInfoField(number: '45K', field: 'Follower'),
                    Text('|',style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,),),
                    ProfileInfoField(number: '45K', field: 'Following')
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: Dimen.regularPadding)),
              const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsu.',
                style: TextStyle(color: AppColors.white, fontSize: 15),
                textAlign: TextAlign.center,),
              const Padding(padding: EdgeInsets.only(top: Dimen.regularPadding)),
              OutlinedButton(
                onPressed: ()=>print('clicked'),
                child: const Text('Follow',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20),),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      color: AppColors.primaryLight,
                      width: 3),
                  fixedSize: Size.fromWidth(
                      MediaQuery.of(context).size.width * 0.8),
                ),
              ),
              Expanded(
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: AppColors.primaryDark,
                    title: TabBar(
                          controller: _tabController,
                          indicatorColor: AppColors.primaryLight,
                          labelColor: AppColors.primaryLight,
                          unselectedLabelColor: AppColors.white,
                          indicatorWeight: 2.9,
                          tabs: const [
                            Icon(Icons.grid_4x4),
                            Icon(Icons.list_alt_outlined),
                          ],
                        ),
                  ),

                  // create widgets for tabbar
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      GridView.count(
                          crossAxisCount: 3,
                          children:[
                            Container(child: const Center(child:Text('1')), color: Colors.blue,),
                            Container(child: const Center(child:Text('2')), color: Colors.red,),
                            Container(child: const Center(child:Text('3')), color: Colors.green,),
                            Container(child: const Center(child:Text('4')), color: Colors.red,),
                            Container(child: const Center(child:Text('5')), color: Colors.green,),
                            Container(child: const Center(child:Text('6')), color: Colors.blue,),
                            Container(child: const Center(child:Text('7')), color: Colors.green,),
                            Container(child: const Center(child:Text('8')), color: Colors.blue,),
                            Container(child: const Center(child:Text('9')), color: Colors.red,),
                          ]),
                      //Container(child: Icon(Icons.directions_car), color: Colors.blue,),
                      ListView.separated(
                        padding: const EdgeInsets.all(Dimen.smallPadding),
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return ListSongCard(image: 'https://picsum.photos/250?image=9', name: songNames[index], artist: artistNames[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) => const Divider(),
                      ),
                      //Container(child: Icon(Icons.directions_transit), color: Colors.red,),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),

      bottomNavigationBar: const NavBar(),
    );
  }
}