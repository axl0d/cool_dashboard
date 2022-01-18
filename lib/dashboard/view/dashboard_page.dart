import 'package:cool_dashboard/dashboard/side_menu/side_menu.dart';
import 'package:cool_dashboard/layout/responsive_layout_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveLayoutBuilder(
        small: (_, __) => const Scaffold(
          body: Center(
            child: Text('hello small'),
          ),
        ),
        medium: (_, __) => const Scaffold(
          body: Center(
            child: Text('hello medium'),
          ),
        ),
        large: (_, __) => BlocProvider(
          create: (context) => SideMenuCubit(),
          child: Row(
            children: const [
              SideMenu(),
              Expanded(
                child: Scaffold(
                  body: Center(
                    child: Text('hello large'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
