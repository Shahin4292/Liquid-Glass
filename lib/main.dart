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
  void initState() {
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(updateIndex);
    super.initState();
  }

  void updateIndex(){
    if (tabController.index != currentIndex){
      setState(() {
        currentIndex = tabController.index;
      });
    }
  }

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
    tabController.animateTo(index);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Stack(
          children: [
            Positioned(
                child: TabBarView(
                  controller: tabController,
                children: tabs.map((tab) => ImageTabPage(label: tab.title)).toList(),
                ))
    ],));
  }
}

class ImageTabPage extends StatelessWidget {
  final String label;
  const ImageTabPage({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [],
    );
  }
}

