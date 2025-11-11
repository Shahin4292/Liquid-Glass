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

class _TabBarDemoPageState extends State<TabBarDemoPage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
