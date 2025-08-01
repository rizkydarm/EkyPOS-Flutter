import 'package:bloc/bloc.dart';
import 'package:eky_pos/presentation/items/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../data/datasources/db_local_datasource.dart';
import '../../../../data/models/responses/product_response_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(_Initial()) {

    final dbLocalDatasource = DBLocalDatasource.instance;

    on<_DeleteProduct>((event, emit) async {
      emit(ProductState.loading());
      await dbLocalDatasource.deleteProduct(event.id);
      add(_GetProducts());
    });
    
    on<_AddProduct>((event, emit) async {
      emit(ProductState.loading());
      await dbLocalDatasource.saveProduct(event.product);
      add(_GetProducts());
    });

    on<_AddProductWithImage>((event, emit) async {
      emit(ProductState.loading());
      add(_GetProducts());
    });

    on<_EditProduct>((event, emit) async {
      emit(ProductState.loading());
      await dbLocalDatasource.updateProduct(event.product);
      add(_GetProducts());
    });

    on<_EditProductWithImage>((event, emit) async {
      emit(ProductState.loading());
      add(_GetProducts());
    });

    on<_GetProducts>((event, emit) async {
      emit(ProductState.loading());
      final result = await dbLocalDatasource.getAllProduct();
      emit(_Success(result));
    });

    on<_SearchProduct>((event, emit) async {
      final result = await dbLocalDatasource.getAllProduct();
      final searchResult = result.where((element) =>
        element.name!.toLowerCase().contains(event.query.toLowerCase()))
      .toList();
      emit(_Success(searchResult));
    });

    on<_UpdateStock>((event, emit) async {
      emit(ProductState.loading());
      add(_GetProducts());
    });

    on<_GetProductsByCategory>((event, emit) async {
      emit(ProductState.loading());
      final result = await dbLocalDatasource.getAllProduct();
      final searchResult = result.where((element) =>
        element.categoryId! == event.categoryId)
      .toList();
      emit(_Success(searchResult));
    });

    on<_GetProductByBarcode>((event, emit) async {
      emit(ProductState.loading());
      final result = await dbLocalDatasource.getAllProduct();
      final searchResult = result.where((element) =>
        element.barcode == event.barcode)
      .toList();
      emit(_Success(searchResult));
    });
  }
}
