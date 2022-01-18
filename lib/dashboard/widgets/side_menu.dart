import 'package:cool_dashboard/l10n/l10n.dart';
import 'package:flutter/material.dart';

enum OverviewItem { categories, users }

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Drawer(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                '😎 Cool Dashboard',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(height: 50),
            SideMenuItem(
              title: l10n.categories,
              item: OverviewItem.categories,
              icon: const Icon(Icons.category),
            ),
            SideMenuItem(
              title: l10n.users,
              item: OverviewItem.users,
              icon: const Icon(Icons.people),
            )
          ],
        ),
      ),
    );
  }
}

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key? key,
    required this.title,
    required this.item,
    required this.icon,
  }) : super(key: key);

  final String title;
  final OverviewItem item;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Color(0xFF13B9FF)),
      ),
      child: ListTile(
        onTap: () {},
        leading: icon,
        title: Text(title),
      ),
    );
  }
}
