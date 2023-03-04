// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_doctor_app/pages/chat_page/chat_page.dart';
import 'package:online_doctor_app/pages/home_page/home_page.dart';
import 'package:online_doctor_app/pages/records/records_page.dart';
import 'package:online_doctor_app/pages/search_page/search_page.dart';

class CommonScreen extends StatefulWidget {
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  int pageIndex = 0;
  List pages = [
    const HomePage(),
    const SearchPage(),
    const ChatPage(),
    const RecordsPage(),
  ];

  //on page function to reset page layout
  onPageChange(int index) async {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: pages[pageIndex],
    );
  }

  //bottom navigation bar widget
  bottomNavBar() {
    return GNav(
      gap: 8,
      backgroundColor: const Color(0xFfF9F9F9),
      onTabChange: (index) {
        onPageChange(index);
      },
      tabs: const [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.search,
          text: "Search",
        ),
        GButton(
          icon: Icons.chat,
          text: "Chats",
        ),
        GButton(
          icon: Icons.person_outline,
          text: "Records",
        ),
      ],
    );
  }
}
