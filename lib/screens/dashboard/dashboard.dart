import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  final _titleBar = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleBar),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                _MenuItem(
                  menuName: "Listas",
                  menuIcon: Icons.checklist_rtl,
                ),
                _MenuItem(
                  menuName: "Perfil",
                  menuIcon: Icons.person,
                ),
              ],
            ),
            Column(
              children: const [
                _MenuItem(
                  menuName: "Teste1",
                  menuIcon: Icons.eighteen_mp,
                ),
                _MenuItem(
                  menuName: "Teste2",
                  menuIcon: Icons.sixty_fps_select,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String menuName;
  final IconData menuIcon;

  const _MenuItem({
    Key? key,
    required this.menuName,
    required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).secondaryHeaderColor,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            width: 160,
            height: 130,
            color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  menuIcon,
                  color: Colors.white70,
                  size: 36,
                ),
                Text(
                  menuName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
