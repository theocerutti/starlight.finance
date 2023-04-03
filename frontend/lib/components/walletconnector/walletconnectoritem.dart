import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frontend/types/wallet.dart';

class WalletConnectorItem extends StatelessWidget {
  const WalletConnectorItem(
      {super.key, required this.wallet, required this.onPressed});

  final Wallet wallet;
  final Function(Wallet) onPressed;

  void initiateWalletConnection() {
    try {
      wallet.initiateConnection();
    } catch (err) {
      Fluttertoast.showToast(msg: err.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (wallet.icon != null)
          Padding(
            padding: const EdgeInsets.all(2),
            child: Image.asset(
              wallet.icon!,
              fit: BoxFit.contain,
              height: 20,
              width: 20,
            ),
          ),
        Text(wallet.name),
        Expanded(
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: wallet.isConnected
                ? const Text("Connected")
                : TextButton(
                    onPressed: () => onPressed(wallet),
                    child: wallet.isExtensionInstalled
                        ? TextButton(
                            child: const Text("Connect"),
                            onPressed: () => initiateWalletConnection(),
                          )
                        : TextButton(
                            child: const Text("Get wallet"),
                            onPressed: () =>
                                wallet.openInstallationDocumentation(),
                          ),
                  ),
          ),
        )
      ],
    );
  }
}
