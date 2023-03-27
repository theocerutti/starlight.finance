import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: [
          Container(child: const Text("Logo")),
          Container(child: const Text("Title"))
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    ]);
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   final Size preferredSize;

//   const CustomAppBar({super.key})
//       : preferredSize = const Size.fromHeight(100.0);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       centerTitle: true,
//       toolbarHeight: 100,
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.search),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: const Icon(Icons.more_vert),
//           onPressed: () {},
//         ),
//       ],
//       title: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//             child: Image.asset(
//               Config.logo,
//               fit: BoxFit.contain,
//               height: 100,
//             ),
//           ),
//           Align(
//               alignment: Alignment.centerLeft, child: const Text(Config.title)),
//         ],
//       ),
//       backgroundColor: Colors.black,
//       elevation: 0.0,
//     );
//   }
// }
