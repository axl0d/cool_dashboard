import 'package:cool_dashboard/dashboard/side_menu/side_menu.dart';
import 'package:cool_dashboard/layout/responsive_layout_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => SideMenuCubit(),
        child: ResponsiveLayoutBuilder(
          small: (_, __) => Scaffold(
            appBar: AppBar(),
            drawer: const SideMenu(),
            body: const DashboardView(),
          ),
          medium: (_, __) => const Scaffold(
            body: DashboardView(),
          ),
          large: (_, __) => Row(
            children: const [
              SideMenu(),
              Expanded(
                child: Scaffold(
                  body: DashboardView(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideMenuCubit, SideMenuState>(
      builder: (context, state) {
        switch (state.item) {
          case OverviewItem.categories:
            return const Center(
              child: Text('categories'),
            );
          case OverviewItem.users:
            return const Center(
              child: Text('users'),
            );
        }
      },
    );
  }
}
