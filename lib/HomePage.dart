import 'package:flutter/material.dart';

class BikeItHome extends StatefulWidget {
  const BikeItHome({super.key});

  @override
  State<BikeItHome> createState() => _BikeItHomeState();
}

class _BikeItHomeState extends State<BikeItHome> {
  String myPackageType = 'Medicals';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Bike It'),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.menu), // Replace with your desired icon
          //     onPressed: () {
          //       // Open the side window (drawer)
          //       Scaffold.of(context).openDrawer();
          //     },
          //   ),
          // ],
        ),
        drawer: MyDrawer(),
        body: Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage('images/bikepic.jpg'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomSheet(
                showDragHandle: true,
                enableDrag: true,
                constraints: BoxConstraints(maxHeight: 300),
                onClosing: () {},
                builder: (context) => ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [Icon(Icons.bike_scooter), Text('Ride')],
                        ),
                        Column(
                          children: [
                            Icon(Icons.bike_scooter),
                            Text('InterCity')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Text('Your Current Location')),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: TextField(
                            decoration: const InputDecoration(
                              icon: Icon(Icons.golf_course),
                              labelText: 'To',
                            ),
                          ),
                        ),
                        Expanded(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.location_on_outlined)))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: DropdownButton<String>(
                      hint: Text('$myPackageType'),
                      items: <String>['Medicals', 'Food', 'Gadgets']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          myPackageType = value!;
                        });
                      },
                    )),
                    ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text('Search Rider'))
                  ],
                ),
                // height: 200, // Adjust the height as needed
                // color: Colors.blueAccent, // Example background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.blue, // Customize the header background color
              ),
              child: Text('Just Bike It')),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle item 1 tap
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('LogOut'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
        ],
      ),
    );
  }
}

// Positioned(
//   top: 50, // Adjust the position as needed
//   left: 50,
//   child: FloatingActionButton(
//     backgroundColor: Colors.blueAccent,
//       onPressed: () {
//         // Handle FAB tap
//         Scaffold.of(context).openDrawer();
//       },
//       child: Icon(Icons.menu)),
// ),
