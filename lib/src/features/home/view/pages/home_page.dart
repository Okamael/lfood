import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lfood/src/features/home/widgets/all_stores/all_stores_widget.dart';
import 'package:lfood/src/features/home/widgets/drinks_stores/drinks_store_widget.dart';
import 'package:lfood/src/features/home/widgets/drugs_stores/drugs_stores_widget.dart';
import 'package:lfood/src/features/home/widgets/markets/markets_widget.dart';
import 'package:lfood/src/features/home/widgets/pet_stores/pet_store_widget.dart';
import 'package:lfood/src/features/home/widgets/restaurants/restaurants_widget.dart';
import 'package:pepperoni/pepperoni.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final tabController = TabController(length: 6, vsync: this);
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(text: "Inicio"),
              Tab(text: "Restaurantes"),
              Tab(text: "Mercados"),
              Tab(text: "Bebidas"),
              Tab(text: "Farmacias"),
              Tab(text: "Pets")
            ],
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black54,
          ),
        ),
        body: TabBarView(controller: tabController, children: const [
          AllStoresWidget(),
          RestaurantsWidget(),
          MarketsWidget(),
          DrinkStoreWidget(),
          DrugsStoreWidget(),
          PetStoreWidget()
        ]),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
