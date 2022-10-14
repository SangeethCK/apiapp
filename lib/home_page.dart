import 'package:apiapp/salads_dish.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late TabController _tabController;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
          //      toolbarHeight: 90,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )),
      body: Column(
        children: [
          TabBar(
              unselectedLabelColor: Colors.blueGrey,
              labelColor: Colors.black,
              controller: _tabController,
              tabs: const [
                Tab(text: 'Salads and Souap'),
                Tab(
                  text: 'From the bernayad',
                ),
                Tab(
                  text: 'From the other dishes',
                ),
              ]),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [Saladish(), Text('data'), Text('data')]),
          )
        ],
      ),
    );
  }
}
