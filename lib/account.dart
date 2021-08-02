import 'package:flutter/material.dart';
import 'package:mini_project/address.dart';
import 'package:mini_project/main_drawer.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        backgroundColor: Color(0xff6f35A5),
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 50.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: 220.0,
              child: Center(
                child: Column(
                  children: [
                    Material(
                        borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        elevation: 10,
                        //child: Padding(padding: EdgeInsets.all(8.0),),
                        child: Image.asset(
                          'assets/profile.jpeg',
                          width: 120.0,
                          height: 120.0,
                        )),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Neha Bharsat',
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Color(0xff6f35A5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sayali Raigade',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'sayaliraigade1999@gmail.com',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: new Wrap(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.home),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Nisarg, Hira Nagar, Behind Nahata College, Jamner Road, Bhusawal, 425201',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddressPage();
                    }));
                  },
                  child: Container(
                    width: 180.0,
                    //margin: EdgeInsets.only(top: screenHeight / 17),
                    child: Center(
                      child: Text(
                        'Edit Address',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 40.0,
                    //width: 500.0,
                    decoration: BoxDecoration(
                      color: Color(0xff6f35A5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
