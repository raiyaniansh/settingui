import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/home/home_provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  HomeProvider? homeProvidert;
  HomeProvider? homeProviderf;
  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context,listen: false);
    homeProvidert = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text("Settings",style: TextStyle(color: Colors.white70,fontSize: 40)),
              SizedBox(height: 15,),
              Text("Common",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ListTile(
                leading: Icon(Icons.language,color: Colors.white,size: 30),
                title: Text('Language',style: TextStyle(color: Colors.white,fontSize: 20)),
                subtitle: Text('English',style: TextStyle(color: Colors.white)),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white10,
              ),
              ListTile(
                leading: Icon(Icons.cloud_outlined,color: Colors.white,size: 30),
                title: Text('Environment',style: TextStyle(color: Colors.white,fontSize: 20)),
                subtitle: Text('Production',style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10,),
              Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ListTile(
                leading: Icon(Icons.call,color: Colors.white,size: 30),
                title: Text('Phone Number',style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white10,
              ),
              ListTile(
                leading: Icon(Icons.mail,color: Colors.white,size: 30),
                title: Text('Email',style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white10,
              ),
              ListTile(
                leading: Icon(Icons.logout,color: Colors.white,size: 30),
                title: Text('Sign out',style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
              SizedBox(height: 10,),
              Text("Secutiry",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ListTile(
                leading: Icon(Icons.phonelink_lock,color: Colors.white,size: 30),
                title: Text('Lock app in background',style: TextStyle(color: Colors.white,fontSize: 20)),
                trailing: Switch(activeColor: Colors.blue, value: homeProvidert!.locks, onChanged: (bool value) {
                  homeProviderf!.chlocks(value);
                },),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white10,
              ),
              ListTile(
                leading: Icon(Icons.fingerprint,color: Colors.white,size: 30),
                title: Text('Use Fingerprint',style: TextStyle(color: Colors.white,fontSize: 20)),
                trailing: Switch(activeColor: Colors.blue, value: homeProvidert!.fp, onChanged: (bool value) {
                  homeProviderf!.chfp(value);
                },),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.white10,
              ),
              ListTile(
                leading: Icon(Icons.lock,color: Colors.white,size: 30),
                title: Text('Change Password',style: TextStyle(color: Colors.white,fontSize: 20)),
                trailing: Switch(activeColor: Colors.blue, value: homeProvidert!.lock, onChanged: (bool value) {
                  homeProviderf!.chlock(value);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
