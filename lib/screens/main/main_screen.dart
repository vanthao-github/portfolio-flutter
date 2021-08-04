import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: bgColor,
                leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu)),
                )),
        drawer: SideMenu(),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                      // (2 + 7) = 9
                      // 2/9 = 0.22 means 22%
                      flex: 2,
                      child: SideMenu()),
                SizedBox(width: defaultPadding),
                Expanded(
                  // 7/9 = 0.78 means 78%
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
