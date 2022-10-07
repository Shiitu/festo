import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel(number: null);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user!.uid)
  //       .get()
  //       .then((value) {
  //     this.loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {});
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'FESTO',
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Colors.orange),
        // drawer: Drawer(
        //   child: ListView(
        //     // Remove padding
        //     padding: EdgeInsets.zero,
        //     children: [
              // UserAccountsDrawerHeader(
              //   // accountName: Text("${loggedInUser.fullName}"),
              //   accountEmail: Text("${loggedInUser.email}"),
              //   currentAccountPicture: CircleAvatar(
              //     child: ClipOval(
              //       child: Image.network(
              //         'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
              //         fit: BoxFit.cover,
              //         width: 90,
              //         height: 90,
              //       ),
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(156, 0, 0, 94),
              //     image: DecorationImage(
              //         fit: BoxFit.fill,
              //         image: NetworkImage(
              //             'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
              //   ),
              // ),
              // ListTile(
              //   leading: Icon(Icons.favorite),
              //   title: Text('Favorites'),
              //   onTap: () => null,
              // ),
              // ListTile(
              //   leading: Icon(Icons.person),
              //   title: Text('Friends'),
              //   onTap: () => null,
              // ),
              // ListTile(
              //   leading: Icon(Icons.share),
              //   title: Text('Share'),
              //   onTap: () => null,
              // ),
        //       ListTile(
        //         leading: Icon(Icons.notifications),
        //         title: Text('Report'),
        //       ),
        //       Divider(),
        //       ListTile(
        //         leading: Icon(Icons.settings),
        //         title: Text('Settings'),
        //         onTap: () => null,
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.description),
        //         title: Text('Policies'),
        //         onTap: () => null,
        //       ),
        //       Divider(),
        //       ListTile(
        //         title: Text('Exit'),
        //         leading: Icon(Icons.exit_to_app),
        //         onTap: () {
        //           // logout(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Column(
                children: [
                  Text('Hey',
                      // semanticsLabel: "${loggedInUser.fullName}",
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  const SizedBox(height: 10.0),
                  Text('Asdf',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600])),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                      children: [
                        Container(
                          width: 320,
                          height: 320,
                           decoration: BoxDecoration(
                            // color: Colors.green[200],
                            border: Border.all(color: Colors.black),
                            ),
                            child: Column(
                              children: [
                                Text("ABC Presents"),
                                SizedBox(height: 5,),
                                Image.asset(
                                  'images/fest.png',
                                  width: 100,
                                  height: 100,
                                  ),
                                  SizedBox(height: 15,),
                                Text(
                                  "XYZ FEST",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30,
                                    fontFamily: 
                                  ),
                                  )
                              ],
                            ),
                        )
                      ],
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  new GestureDetector(
                    onTap: () {
                      // MaterialPageRoute(builder: (context) => Cart()),
                      print("Container clicked");
                    },
                    child: Expanded(
                      child: Container(
                        width: 320,
                        height: 90,
                        decoration: BoxDecoration(
                          // color: Colors.green[200],
                          border: Border.all(color: Colors.black),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //     offset: Offset(0, 3),
                          //   ),
                          // ],
                        ),
                        // padding: EdgeInsets.all(20),
                        child: Row(children: [
                          SizedBox(width: 25,),
                          Image.asset(
                            'images/event.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 40,),
                          Text(
                            "EVENTS",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            )
                        ]),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 15.0),
                  // new GestureDetector(
                  //   onTap: () {
                  //     print("Container clicked");
                  //     //  Navigator.push(
                  //     //   // context,
                  //     //   // MaterialPageRoute(builder: (context) => Timetable()),
                  //     //   );
                  //   },
                  //   child: Expanded(
                  //     child: Container(
                  //       width: 150,
                  //       height: 150,
                  //       decoration: BoxDecoration(
                  //         // color: Colors.green[200],
                  //          boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey.withOpacity(0.5),
                  //             spreadRadius: 5,
                  //             blurRadius: 7,
                  //             offset: Offset(0, 3),
                  //           ),
                  //         ],
                  //       ),
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //         Image.asset(
                  //           'images/logo.png',
                  //           width: 80,
                  //           height: 80,
                  //         ),
                  //         SizedBox(height: 7,),
                  //         Text(
                  //           "Time Table",
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold
                  //           ),
                  //           )
                  //         // Image.network("Image"),
                  //         // Column(
                  //         //   children: [
                  //         //     Text(
                  //         //       "Check\n Attendance",
                  //         //       style: TextStyle(
                  //         //           fontSize: 12, fontWeight: FontWeight.bold),
                  //         //     ),
                  //         //     Text("Icon")
                  //         //   ],
                  //         // )
                  //       ]),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new GestureDetector(
                    onTap: () {
                      // MaterialPageRoute(builder: (context) => Cart()),
                      print("Container clicked");
                    },
                    child: Expanded(
                      child: Container(
                        width: 320,
                        height: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          // color: Colors.green[200],
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //     offset: Offset(0, 3),
                          //   ),
                          // ],
                        ),
                        // padding: EdgeInsets.all(20),
                        child: Row(children: [
                          SizedBox(width: 25,),
                          Text(
                            "ORGANIZER",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          SizedBox(width: 45,),
                          Image.asset(
                            'images/organizer.png',
                            width: 60,
                            height: 60,
                          ),
                          // SizedBox(height: 7,),
                          
                        ]),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 15.0),
                  // new GestureDetector(
                  //   onTap: () {
                  //     print("Container clicked");
                  //     //  Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(builder: (context) => Get()),
                  //     //   );
                  //   },
                  //   child: Expanded(
                  //     child: Container(
                  //       width: 150,
                  //       height: 150,
                  //       decoration: BoxDecoration(
                  //         // color: Colors.green[200],
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey.withOpacity(0.5),
                  //             spreadRadius: 5,
                  //             blurRadius: 7,
                  //             offset: Offset(0, 3),
                  //           ),
                  //         ],
                  //       ),
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //        Image.asset(
                  //           'images/logo.png',
                  //           width: 80,
                  //           height: 80,
                  //         ),
                  //         // SizedBox(height: 7,),
                  //         // Text(
                  //         //   "Home Work",
                  //         //   style: TextStyle(
                  //         //     fontSize: 20,
                  //         //     fontWeight: FontWeight.bold
                  //         //   ),
                  //         //   )
                  //         // Image.network("Image"),
                  //         // Column(
                  //         //   children: [
                  //         //     Text(
                  //         //       "Check\n Attendance",
                  //         //       style: TextStyle(
                  //         //           fontSize: 12, fontWeight: FontWeight.bold),
                  //         //     ),
                  //         //     Text("Icon")
                  //         //   ],
                  //         // )
                  //       ]),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new GestureDetector(
                    onTap: () {
                      // MaterialPageRoute(builder: (context) => Cart()),
                      print("Container clicked");
                    },
                    child: Expanded(
                      child: Container(
                        width: 320,
                        height: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          // color: Colors.green[200],
                          boxShadow: [
                            // BoxShadow(
                            //   color: Colors.grey.withOpacity(0.5),
                            //   spreadRadius: 5,
                            //   blurRadius: 7,
                            //   offset: Offset(0, 3),
                            // ),
                          ],
                        ),
                        
                        child: Row(
                          children: [
                          // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          SizedBox(width: 25,),
                          Image.asset(
                            'images/coordinator.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 33,),
                          Text(
                            "COMMITTEE",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ]),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 15.0),
                  // new GestureDetector(
                  //   onTap: () {
                  //     print("Container clicked");
                  //     //  Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(builder: (context) => Get()),
                  //     //   );
                  //   },
                  //   child: Expanded(
                  //     child: Container(
                  //       width: 150,
                  //       height: 150,
                  //       decoration: BoxDecoration(
                  //         // color: Colors.green[200],
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey.withOpacity(0.5),
                  //             spreadRadius: 5,
                  //             blurRadius: 7,
                  //             offset: Offset(0, 3),
                  //           ),
                  //         ],
                  //       ),
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //        Image.asset(
                  //           'images/logo.png',
                  //           width: 80,
                  //           height: 80,
                  //         ),
                  //         SizedBox(height: 7,),
                  //         Text(
                  //           "Finance",
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold
                  //           ),
                  //           )
                  //         // Image.network("Image"),
                  //         // Column(
                  //         //   children: [
                  //         //     Text(
                  //         //       "Check\n Attendance",
                  //         //       style: TextStyle(
                  //         //           fontSize: 12, fontWeight: FontWeight.bold),
                  //         //     ),
                  //         //     Text("Icon")
                  //         //   ],
                  //         // )
                  //       ]),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ]),
        )));
  }
}

// Future<void> logout(BuildContext context) async {
//   await FirebaseAuth.instance.signOut();
//   Navigator.of(context)
//       .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
// }
