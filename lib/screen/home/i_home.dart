import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/home/home_provider.dart';

class IHomeScreen extends StatefulWidget {
  const IHomeScreen({Key? key}) : super(key: key);

  @override
  State<IHomeScreen> createState() => _IHomeScreenState();
}

class _IHomeScreenState extends State<IHomeScreen> {
  HomeProvider? homeProvidert;
  HomeProvider? homeProviderf;
  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context,listen: false);
    homeProvidert = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white.withOpacity(0.10),
        navigationBar: CupertinoNavigationBar(
          middle: Text("Setting"),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child: Text("Common",style: TextStyle(color: CupertinoColors.white.withOpacity(0.80))),
            ),
            Container(
              color: CupertinoColors.black.withOpacity(0.50),
              child: Column(
                children: [
                  CupertinoListTile(
                    leading: Icon(CupertinoIcons.globe,color: CupertinoColors.white),
                    title: Text('Language'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("English",style: TextStyle(color: CupertinoColors.white.withOpacity(0.50)),),
                        SizedBox(width: 10,),
                        Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    border: Border.fromBorderSide(BorderSide.none),
                    leading: Icon(CupertinoIcons.cloud,color: CupertinoColors.white),
                    title: Text('Enviroment'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Production",style: TextStyle(color: CupertinoColors.white.withOpacity(0.50)),),
                        SizedBox(width: 10,),
                        Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child: Text("Account",style: TextStyle(color: CupertinoColors.white.withOpacity(0.80))),
            ),
            Container(
              color: CupertinoColors.black.withOpacity(0.50),
              child: Column(
                children: [
                  CupertinoListTile(
                    leading: Icon(CupertinoIcons.phone_fill,color: CupertinoColors.white),
                    title: Text('Phone number'),
                    trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),),
                  ),
                  CupertinoListTile(
                    leading: Icon(CupertinoIcons.mail_solid,color: CupertinoColors.white),
                    title: Text('Email'),
                    trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),),
                  ),
                  CupertinoListTile(
                    border: Border.fromBorderSide(BorderSide.none),
                    leading: Icon(CupertinoIcons.square_arrow_right,color: CupertinoColors.white),
                    title: Text('Sign out'),
                    trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child: Text("Secutiry",style: TextStyle(color: CupertinoColors.white.withOpacity(0.80))),
            ),
            Container(
              color: CupertinoColors.black.withOpacity(0.50),
              child: Column(
                children: [
                  CupertinoListTile(
                    leading: Icon(Icons.phonelink_lock,color: CupertinoColors.white),
                    title: Text('Phone number'),
                    trailing: CupertinoSwitch(activeColor: CupertinoColors.activeBlue,value: homeProvidert!.locks, onChanged: (value) {
                      homeProviderf!.chlocks(value);
                    },)
                  ),
                  CupertinoListTile(
                    leading: Icon(Icons.fingerprint,color: CupertinoColors.white),
                    title: Text('Email'),
                    trailing: CupertinoSwitch(activeColor: CupertinoColors.activeBlue,value: homeProvidert!.fp, onChanged: (value) {
                      homeProviderf!.chfp(value);
                    },)
                  ),
                  CupertinoListTile(
                    border: Border.fromBorderSide(BorderSide.none),
                    leading: Icon(CupertinoIcons.padlock_solid,color: CupertinoColors.white),
                    title: Text('Change password'),
                    trailing: CupertinoSwitch(activeColor: CupertinoColors.activeBlue,value: homeProvidert!.lock, onChanged: (value) {
                      homeProviderf!.chlock(value);
                    },)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,bottom: 10),
              child: Text("Misc",style: TextStyle(color: CupertinoColors.white.withOpacity(0.80))),
            ),
            Container(
              color: CupertinoColors.black.withOpacity(0.50),
              child: Column(
                children: [
                  CupertinoListTile(
                    leading: Icon(CupertinoIcons.doc_text_fill,color: CupertinoColors.white),
                    title: Text('Terms of Service'),
                    trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),),
                  ),
                  CupertinoListTile(
                    border: Border.fromBorderSide(BorderSide.none),
                    leading: Icon(Icons.collections_bookmark,color: CupertinoColors.white),
                    title: Text('Open source licenses'),
                    trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.white.withOpacity(0.50),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
