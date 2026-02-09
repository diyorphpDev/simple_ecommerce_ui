import 'package:exam_proj/cubit/head_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeadCubit extends Cubit<HeadInitialState> {
  HeadCubit() : super(HeadInitialState());

  void pageBottombar(int val) {
    emit(HeadInitialState(
      pages: state.pages, 
      pageIndex: val,   
    ));
  }
}
