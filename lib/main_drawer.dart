import 'package:flutter/material.dart';
import 'package:mini_project/account.dart';
import 'package:mini_project/main.dart';
import 'package:mini_project/address.dart';
//import 'package:mini_project/main.dart';
//import 'package:mini_project/signup.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Color(0xff6f35A5),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpeg"),
                          fit: BoxFit.fill)),
                ),
                Text(
                  "Sayali",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "sayaliraigade1999@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        CustomeListTile(
            Icons.person,
            "Account",
            () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Account();
                  }))
                }),
        CustomeListTile(
            Icons.home,
            "Address",
            () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddressPage();
                  }))
                }),
        CustomeListTile(Icons.announcement, "About", () => {}),
        CustomeListTile(
            Icons.arrow_back,
            "Logout",
            () => {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text("Logout"),
                      content: const Text("Are you sure?"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, "Cancle"),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }))
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  ),
                })
      ]),
    );
  }
}

class CustomeListTile extends StatelessWidget {
  IconData icon;
  String text;
  final void Function() onTap;

  CustomeListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.indigo.shade500,
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          height: 65.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ]),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
