import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "indigo",
              ),
              Tab(
                text: "green",
              ),
              Tab(
                text: "red",
              ),
              Tab(
                text: "blue",
              ),
              Tab(
                text: "yellow",
              ),
            ],
            isScrollable: true,
            indicatorColor: Colors.red,
          ),
        ),
        body: TabBarView(children: [
          Container(color: Colors.indigo),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.yellow),
        ]),
      ),
    );
  }
}
