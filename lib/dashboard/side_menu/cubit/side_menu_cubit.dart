import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'side_menu_state.dart';

class SideMenuCubit extends Cubit<SideMenuState> {
  SideMenuCubit() : super(const SideMenuState());

  void setItem(OverviewItem item) => emit(SideMenuState(item: item));
}
