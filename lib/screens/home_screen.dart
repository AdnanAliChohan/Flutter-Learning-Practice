import 'package:flutter/material.dart';
import 'package:flutter_world/models/catalog.dart';
import 'package:flutter_world/widgets/drawer.dart';
import 'package:flutter_world/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
