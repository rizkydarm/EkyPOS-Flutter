import 'package:eky_pos/data/models/responses/category_response_model.dart';
import 'package:eky_pos/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:eky_pos/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eky_pos/core/constants/colors.dart';
import 'package:eky_pos/core/extensions/string_ext.dart';
import 'package:eky_pos/presentation/home/pages/checkout_page.dart';
import 'package:eky_pos/presentation/home/widgets/drawer_widget.dart';
import 'package:eky_pos/presentation/items/bloc/product/product_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';


class SalesPage extends StatelessWidget {

  final ValueNotifier<bool>? toggleSideMenuNotifier;
  
  const SalesPage({
    super.key,
    this.toggleSideMenuNotifier,
  });   

  @override
  Widget build(BuildContext context) {
    final searchedTextNotifier = ValueNotifier<String?>(null);
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final orientation = MediaQuery.of(context).orientation;
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    final isLargeScreen = orientation == Orientation.landscape && (deviceType == DeviceScreenType.desktop || deviceType == DeviceScreenType.tablet);
    final isSmallScreen = orientation == Orientation.portrait || deviceType == DeviceScreenType.mobile;
    return Scaffold(
      key: scaffoldKey,
      drawer: isLargeScreen ? null : DrawerWidget(),
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Sales'),
        centerTitle: true,
        leading: toggleSideMenuNotifier != null ? IconButton(
          icon: const Icon(Icons.menu_open),
          onPressed: () => toggleSideMenuNotifier!.value = !toggleSideMenuNotifier!.value,
        ) : null,
      ),
      bottomNavigationBar: isSmallScreen ? BottomAppBar(
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (cart, subtotal, total, qty) => ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                ),
                onPressed: cart.isEmpty ? null : () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => CheckoutPage()
                    )
                  );
                },
                icon: const Icon(Icons.payment),
                label: const Text('Checkout'),
              )
            );
          },
        ),
      ) : const SizedBox.shrink(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchBar(
              leading: const Icon(Icons.search),
              hintText: 'Search product or category',
              elevation: WidgetStateProperty.all(1),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
              onChanged: (value) => searchedTextNotifier.value = value,
            ),
          ),
          Expanded(
            child: BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, categoryState) {
                return categoryState.maybeWhen(
                  orElse: () => Center(child: Text("No Items")),
                  loading: () => Center(child: CircularProgressIndicator()),
                  success: (categories) => BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, productState) {
                      return productState.maybeWhen(
                        orElse: () => Center(child: Text("No Items")),
                        loading: () => Center(child: CircularProgressIndicator()),
                        success: (products) {
                          if (products.isEmpty) {
                            return Center(child: Text("No Items"));
                          }
                          return ValueListenableBuilder(
                            valueListenable: searchedTextNotifier,
                            builder: (context, value, child) {
                              final filteredData = value == null ? products : products.where((product) {
                                final searchTerm = value.toLowerCase();
                                final isName = product.name!.toLowerCase().contains(searchTerm);
                                final productCategory = categories.firstWhere(
                                  (cat) => cat.id == product.categoryId,
                                  orElse: () => Category(id: -1, name: '-'),
                                );                    
                                final isCategory = productCategory.name!.toLowerCase().contains(searchTerm);
                                return isName || isCategory;
                              }).toList();
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: deviceType == DeviceScreenType.mobile ? 2 : 3,
                                    childAspectRatio: 0.8,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                  ),
                                  itemCount: filteredData.length,
                                  itemBuilder: (context, index) {
                                    final product = filteredData[index];
                                    return BlocBuilder<CheckoutBloc, CheckoutState>(
                                      builder: (context, state) {
                                        return state.maybeWhen(
                                          orElse: () => const SizedBox(),
                                          success: (cart, subtotal, total, qty) {
                                            final selectedProduct = cart.any((element) => element.product.id == product.id);
                                            final categoryName = categories.firstWhere((element) => element.id == product.categoryId).name ?? '-';
                                            return Card(
                                              elevation: selectedProduct ? 0 : 1,
                                              clipBehavior: Clip.antiAlias,
                                              color: selectedProduct ? AppColors.card : AppColors.white,
                                              child: InkWell(
                                                onTap: () {
                                                  if (selectedProduct) {
                                                    context.read<CheckoutBloc>().add(CheckoutEvent.removeFromCart(product: filteredData[index]));
                                                  } else {
                                                    context.read<CheckoutBloc>().add(CheckoutEvent.addToCart(product: filteredData[index]));
                                                  }
                                                },
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          SizedBox(
                                                            width: double.infinity,
                                                            height: deviceType == DeviceScreenType.mobile ? 100 : 150,
                                                            child: DecoratedBox(
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                                color: changeStringtoColor(product.color ?? "#000000"),
                                                              ),
                                                              child: selectedProduct ? Icon(
                                                                Icons.check_circle, 
                                                                size: 30, 
                                                                color: AppColors.white
                                                              ) : null,
                                                            ),
                                                          ),
                                                          SizedBox(height: 8),
                                                          Text(
                                                            product.name ?? "-",
                                                            textAlign: TextAlign.left,
                                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                          Text(
                                                            categoryName,
                                                            style: Theme.of(context).textTheme.bodyMedium,
                                                          ),
                                                          Spacer(),
                                                          Text(
                                                            product.price?.currencyFormatRpV3 ?? "-",
                                                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  )
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
