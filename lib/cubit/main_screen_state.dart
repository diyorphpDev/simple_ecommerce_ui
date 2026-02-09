
import 'package:exam_proj/models/products_model.dart';

abstract class MainScreenState {}

class MainLoadingState extends MainScreenState {}

class MainErrorState extends MainScreenState {
  final String errorMsg;
  MainErrorState({required this.errorMsg});
}

class MainSuccessState extends MainScreenState {
  final AmazonProducts model; 
  MainSuccessState({required this.model});
}
