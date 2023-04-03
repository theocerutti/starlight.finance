import 'package:flutter/material.dart';
import 'package:frontend/components/walletconnector/walletconnectorbutton.dart';

import '../utils/config.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    this.logoUrl = Config.logo,
    this.title = Config.title,
    this.logoHeight = 40,
    this.barHeight = 70,
  });

  final String logoUrl;
  final double logoHeight;
  final String title;
  final double barHeight;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      height: widget.barHeight,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Image.asset(
                    widget.logoUrl,
                    fit: BoxFit.contain,
                    height: widget.logoHeight,
                  ),
                ),
                Text(
                  widget.title,
                  textScaleFactor: 1.5,
                ),
              ],
            ),
            Row(
              children: [
                const WalletConnectorButton(),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
