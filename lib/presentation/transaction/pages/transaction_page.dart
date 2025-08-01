import 'package:eky_pos/core/extensions/date_time_ext.dart';
import 'package:eky_pos/core/extensions/string_ext.dart';
import 'package:eky_pos/presentation/home/widgets/drawer_widget.dart';
import 'package:eky_pos/presentation/transaction/pages/detail_transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eky_pos/presentation/home/bloc/transaction/transaction_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TransactionPage extends StatelessWidget {
  final ValueNotifier<bool>? toggleSideMenuNotifier;
  
  const TransactionPage({
    super.key,
    this.toggleSideMenuNotifier,
  });

  @override
  Widget build(BuildContext context) {
    context.read<TransactionBloc>().add(const TransactionEvent.getAllOrder());
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      key: scaffoldKey,
      drawer: deviceType == DeviceScreenType.mobile ? DrawerWidget() : null,
      appBar: AppBar(
        title: const Text('Transactions'),
        centerTitle: true,
        leading: toggleSideMenuNotifier != null ? IconButton(
          icon: const Icon(Icons.menu_open),
          onPressed: () => toggleSideMenuNotifier!.value = !toggleSideMenuNotifier!.value,
        ) : null,
      ),
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(child: Text('No Transactions')),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            success: (transactions, items, transaction) {
            if (transactions?.isEmpty ?? true) {
              return const Center(
                child: Text('No Transactions'),
              );
            }
            
            return ListView.builder(
              itemCount: transactions?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap:  () {
                    if ((transactions[index].items?.length ?? -1) > 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailTransactionPage(
                            transaction: transactions[index],
                          ),
                        ),
                      );
                    }
                  },
                  leading: Text((transactions![index].items?.length ?? -1).toString()),
                  title: Text(transactions[index].totalPrice!.currencyFormatRpV3,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(transactions[index].createdAt!.toLocal().toFormattedDateOnly()),
                  trailing: Text(transactions[index].orderNumber!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              },
            );
          });
        },
      ),
    );
  }
}
