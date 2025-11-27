import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/Pages/CallScreen.dart';
import 'package:whatsapp_clone/Pages/ChatScreen.dart';
import 'package:whatsapp_clone/Pages/CommunityScreen.dart';
import 'package:whatsapp_clone/Pages/UpdatesScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int selectedIndex = 0;
  final PageController pageController = PageController();

  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  List<Widget> pages = [
    Chatscreen(),
    UpdatesScreen(),
    CommunityScreen(),
    CallScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Theme.of(context).scaffoldBackgroundColor,type:BottomNavigationBarType.fixed,items: [
        BottomNavigationBarItem(icon: Icon(Icons.message,),label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.update,),label: "Updates"),
        BottomNavigationBarItem(icon: Icon(Icons.groups,),label: "Community"),
        BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Calls"),
      ],
        currentIndex: selectedIndex,
        selectedLabelStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.green,
        ),

        unselectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedLabelStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        onTap: onTapped,
      ),
      body: PageView(
        controller: pageController,
        children: pages,
      ),
    );
  }
}
