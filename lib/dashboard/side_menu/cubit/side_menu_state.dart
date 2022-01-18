part of 'side_menu_cubit.dart';

enum OverviewItem { categories, users }

class SideMenuState extends Equatable {
  const SideMenuState({
    this.item = OverviewItem.categories,
  });

  final OverviewItem item;

  @override
  List<Object?> get props => [item];
}
