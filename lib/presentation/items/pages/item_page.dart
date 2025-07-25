import 'package:flutter/material.dart';
import 'package:eky_pos/presentation/home/widgets/drawer_widget.dart';
import 'package:eky_pos/presentation/items/pages/category_page.dart';
import 'package:eky_pos/presentation/items/pages/product/product_page.dart';
import 'package:eky_pos/presentation/items/pages/stock/stock_page.dart';

import '../../../core/constants/colors.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Items',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
          icon: Icon(Icons.menu, color: AppColors.white)
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Products"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductPage();
            })),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category),
            title: Text("Categories"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CategoryPage();
            })),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.inventory),
            title: Text("Stocks"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return StockPage();
            })),
          ),
          Divider(),
        ],
      ),
    );
  }
}
