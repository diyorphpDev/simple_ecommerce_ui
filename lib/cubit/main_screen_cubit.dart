import 'package:exam_proj/cubit/main_screen_state.dart';
import 'package:exam_proj/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final ApiService _apiService = ApiService();

  MainScreenCubit() : super(MainLoadingState());

  void fetchProducts() async {
    try {
      emit(MainLoadingState()); 
      final data = await _apiService.apiAllProducts();
      emit(MainSuccessState(model: data));
    } catch (e) {
      emit(MainErrorState(errorMsg: e.toString()));
    }
  }
}
