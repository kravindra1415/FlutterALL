import 'package:flutter/material.dart';
import 'package:flutter_application_1/IconMenu/HomeIcon.dart';
import 'package:flutter_application_1/IconMenu/SettingIcon.dart';
import 'package:flutter_application_1/home_page/domain/drawer_model.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _selectedIndex = 0;
  _onselectedItem(int index) {
    switch (index) {
      case 0:
        Get.toNamed('HomeIcon');
        break;

      case 1:
        Get.toNamed('SettingIcon');
        break;
    }
  }

  List<DrawerModel> drawerList = [
    DrawerModel(
      name: "Home",
      icon: Icons.home,
    ),
    DrawerModel(
      name: "Settings",
      icon: Icons.settings,
    ),
    DrawerModel(
      name: "Print",
      icon: Icons.print,
    ),
    DrawerModel(
      name: "Logout",
      icon: Icons.logout,
    ),
    DrawerModel(
      name: "Info",
      icon: Icons.info,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Material(
          child: Column(children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/github.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "I'm GITHUB",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      "iamgit@gmail.com",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: drawerList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return _createDrawerMenu(
                      icon: drawerList[index].icon,
                      strmenu: drawerList[index].name,
                      index: index,
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _createDrawerMenu({
    IconData? icon,
    String? strmenu,
    int? index,
  }) {
    return ListTile(
      onTap: () {
        setState(() {
          _onselectedItem(index!);
        });
      },
      title: Row(
        children: <Widget>[
          Icon(icon),
          Text(
            strmenu!,
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
        ],
      ),
    );
  }
}





/*  
 Container(
              width: Get.width,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.blue),
                child: Stack(
                  children: [
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.supervised_user_circle),
                        const Text(
                          'Ravi',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/abc.png',
                              height: 50,
                            ),
                          ),
                        ),

                        //Image.asset('assets/user.png'),
                        // Text(
                        //   'Ravi',
                        //   style: TextStyle(
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return _createDrawerMenu(
                    icon: drawerList[index].icon,
                    strmenu: drawerList[index].name,
                  );
                },
              ),
            ),
          ],
        ),
      ),
*/