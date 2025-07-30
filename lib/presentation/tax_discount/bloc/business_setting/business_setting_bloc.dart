import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:eky_pos/data/datasources/business_setting_remote_datasource.dart';
import 'package:eky_pos/data/models/requests/business_setting_request_model.dart';


part 'business_setting_bloc.freezed.dart';
part 'business_setting_event.dart';
part 'business_setting_state.dart';

class BusinessSettingBloc
    extends Bloc<BusinessSettingEvent, BusinessSettingState> {
  // final BusinessSettingRemoteDatasource businessSettingRemoteDatasource;
  BusinessSettingBloc(
    // this.businessSettingRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetBusinessSetting>((event, emit) async {
      // emit(_Loading());
      // final result = await businessSettingRemoteDatasource.getBusinessSetting();
      // result.fold(
      //   (l) => emit(_Error(l)),
      //   (r) {
          //simpan ke SQLite agar selalu ter‑update
          // final listLocal = r.data.map((e) => e.toTaxDiscount()).toList();
          // await DBLocalDatasource.instance.removeAllTaxDiscount();
          // await DBLocalDatasource.instance.insertAllTaxDiscount(listLocal);

          // emit(_Loaded(r.data));
        // },
      // );
    });

    on<_AddBusinessSetting>((event, emit) async {
      // emit(_Loading());
      // final result =
      //     await businessSettingRemoteDatasource.addBusinessSetting(event.data);
      // result.fold(
      //   (l) => emit(_Error(l)),
      //   (r) => add(_GetBusinessSetting()),
      // );
    });

    on<_EditBusinessSetting>((event, emit) async {
      // emit(_Loading());
      // final result = await businessSettingRemoteDatasource
      //     .updateBusinessSetting(event.data, event.id);
      // result.fold(
      //   (l) => emit(_Error(l)),
      //   (r) => add(_GetBusinessSetting()),
      // );
    });

    on<_DeleteBusinessSetting>((event, emit) async {
      // emit(_Loading());
      // final result =
      //     await businessSettingRemoteDatasource.deleteBusinessSetting(event.id);
      // result.fold(
      //   (l) => emit(_Error(l)),
      //   (r) => add(_GetBusinessSetting()),
      // );
    });
  }
}
