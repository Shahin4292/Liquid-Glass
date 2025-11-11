import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoApp(
  debugShowCheckedModeBanner: false,
  home: TabBarDemoPage(),
));

class TabBarDemoPage extends StatefulWidget {
  const TabBarDemoPage({super.key});

  @override
  State<TabBarDemoPage> createState() => _TabBarDemoPageState();
}

class TabData{
  final String title;
  final String iconName;

  TabData({required this.title, required this.iconName});
}

class _TabBarDemoPageState extends State<TabBarDemoPage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  int currentIndex = 0;
  final List<TabData> tabs = [
    TabData(title: "Home", iconName: "home"),
    TabData(title: "Search", iconName: "search"),
    TabData(title: "Profile", iconName: "profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
