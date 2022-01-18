import 'package:bloc_test/bloc_test.dart';
import 'package:cool_dashboard/dashboard/side_menu/side_menu.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SideMenuCubit', () {
    SideMenuCubit buildCubit() => SideMenuCubit();

    group('constructor', () {
      test('works properly', () {
        expect(buildCubit, returnsNormally);
      });

      test('has correct initial state', () {
        expect(
          buildCubit().state,
          equals(const SideMenuState()),
        );
      });
    });

    group('setItem', () {
      blocTest<SideMenuCubit, SideMenuState>(
        'sets item to given value',
        build: buildCubit,
        act: (cubit) => cubit.setItem(OverviewItem.users),
        expect: () => [
          const SideMenuState(item: OverviewItem.users),
        ],
      );
    });
  });
}
