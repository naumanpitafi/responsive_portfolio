import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/screens/responsive.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We hide the appbar on desktop
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            )
          : AppBar(
              title: Container(
                constraints: const BoxConstraints(maxWidth: maxWidthWindow),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: defaultPadding),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
