import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_app/pages/login.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _indexSelect = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const StudentView(),
    const Historique(),
    const GSheet(),
    const AgendaView(), 
  ];
  final List<Color> tabColor = [
    const Color(0xff8A2BE2),
    const Color(0xff8A2BE2),
    const Color(0xff8A2BE2),
    const Color(0xff8A2BE2), 
  ];

  int get selectedIndex => _indexSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('BRICOFLEX'),

          backgroundColor: const Color(0xff121212),
            leading:IconButton(
  icon: const Icon(Icons.logout),
  onPressed: () {
 showDialog(
  context: context,
  builder: (BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        title: const Text(
          'Déconnexion',
          style: TextStyle(
            color: Color(0xff8A2BE2),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        content: const Text(
          'Voulez-vous vous déconnecter ?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 46, 46, 46),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        actions: <Widget>[
          TextButton(
            child: const Text(
              'Annuler',
              style: TextStyle(
                color: Color(0xff8A2BE2),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text(
              'Déconnexion',
              style: TextStyle(
                color: Color(0xff8A2BE2),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onPressed: () {
                  Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LoginPage(title: '',),
                            ),
                          );
            },
          ),
        ],
      ),
    );
  },
);
  },
),

        ),

      backgroundColor: const Color(0xff121212),
        body: Center(
          child: _widgetOption.elementAt(_indexSelect),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                color: Color(0xff121212),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      color: Color.fromARGB(255, 84, 83, 83))
                ]),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 1,
                  vertical: 4,
                ),
                child: GNav(
                  rippleColor: const Color.fromARGB(255, 48, 47, 47),
                  hoverColor: const Color.fromARGB(255, 48, 47, 47),
                  gap: 5,
                  activeColor: tabColor.elementAt(_indexSelect),
                  tabs: const [
                    GButton(
                      icon: Icons.home_filled,
                      iconSize: 30,
                      iconColor: Color(0xff8A2BE2),
                      text: "Accueil",
                    ),
                    GButton(
                      icon: Icons.message,
                      iconSize: 30,
                      iconColor: Color(0xff8A2BE2),
                      text: "Messages ",
                    ),
                    GButton(
                      icon: Icons.account_circle_outlined,
                      iconSize: 30,
                      iconColor: Color(0xff8A2BE2),
                      text: "Profils",
                    ),
                    GButton(
                      icon: Icons.calendar_month_outlined,
                      iconSize: 30,
                      iconColor: Color(0xff8A2BE2),
                      text: "Agenda",
                    ),
                  ],
                  selectedIndex: _indexSelect,
                  onTabChange: (index) {
                    setState(() {
                      _indexSelect = index;
                    });
                  },
                ),
              ),
            )));
  }
}

class AgendaView extends StatefulWidget {
  const AgendaView({Key? key}) : super(key: key);

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
}

class StudentView extends StatefulWidget {
  const StudentView({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class  Historique extends StatefulWidget {
  const Historique({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class GSheet extends StatefulWidget {
  const GSheet({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
