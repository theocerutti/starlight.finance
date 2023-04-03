import 'package:flutter/material.dart';
import 'package:frontend/utils/wallets.dart';
import 'package:frontend/types/wallet.dart';
import 'package:frontend/components/walletconnector/walletconnectoritem.dart';

class WalletConnectorButton extends StatefulWidget {
  const WalletConnectorButton({super.key});

  @override
  State<WalletConnectorButton> createState() => _WalletConnectorButtonState();
}

class _WalletConnectorButtonState extends State<WalletConnectorButton> {
  Wallet? selectedWallet;

  Widget getHint() {
    if (selectedWallet == null) {
      return const Text("Connect");
    }

    return Row(
      children: [
        if (selectedWallet!.icon != null)
          Padding(
            padding: const EdgeInsets.all(2),
            child: Image.asset(
              selectedWallet!.icon!,
              fit: BoxFit.contain,
              height: 20,
              width: 20,
            ),
          ),
        const Expanded(
          child: Text(
            "erjaneae",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  void onPressed(Wallet wallet) {
    setState(() {
      selectedWallet = wallet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<Wallet>(
        alignment: AlignmentDirectional.center,
        hint: Padding(padding: const EdgeInsets.all(10), child: getHint()),
        elevation: 8,
        isExpanded: true,
        dropdownColor: Colors.white,
        icon: const SizedBox.shrink(),
        underline: const SizedBox.shrink(),
        borderRadius: BorderRadius.circular(10),
        onChanged: (Wallet? value) {},
        items: SupportedWallets.wallets.map<DropdownMenuItem<Wallet>>(
          (Wallet wallet) {
            return DropdownMenuItem<Wallet>(
              enabled: false,
              value: wallet,
              child: WalletConnectorItem(wallet: wallet, onPressed: onPressed),
            );
          },
        ).toList(),
      ),
    );
  }
}
