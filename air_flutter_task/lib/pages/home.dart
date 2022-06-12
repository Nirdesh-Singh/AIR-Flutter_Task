import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/pages/dialog.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final userName = ['John Andrison', 'Mahesh', 'Natasha', 'Fernny', 'Larry'];
  final profilePicture = [
    'John.jpg',
    'Mahesh.jpg',
    'Natasha.jpg',
    'Fernny.jpg',
    'Larry.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildFloatingSearchBar(),
        ],
      ),
    );
  }

  Widget buildFloatingSearchBar() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
            child: FloatingSearchBar(
              backdropColor: Colors.transparent,
              automaticallyImplyDrawerHamburger: false,
              automaticallyImplyBackButton: false,
              shadowColor: Colors.black,
              elevation: 6.0,
              hint: 'Flash',
              leadingActions: [
                FloatingSearchBarAction(
                  showIfOpened: false,
                  child: CircularButton(
                    icon: const Icon(Icons.search, size: 35.0),
                    onPressed: () {},
                  ),
                ),
                FloatingSearchBarAction.searchToClear(
                  showIfClosed: false,
                ),
                const Text('                          '),
              ],
              actions: [
                FloatingSearchBarAction(
                  showIfOpened: false,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => const ShowDialog(),
                      );
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/Default.jpg'),
                      radius: 20.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
              builder: (context, transition) {
                return const Text(' ');
              },
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        ListView.builder(
            shrinkWrap: true,
            itemCount: userName.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(7.5, 10.0, 7.5, 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/${profilePicture[index]}'),
                        radius: 36.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Text(
                      userName[index],
                      style: const TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              );
            }),
        const SizedBox(height: 225.0),
      ],
    );
  }
}
