import 'wallet.dart';
import 'package:flutter_web3/flutter_web3.dart' as web3;

class MetamaskWallet extends Wallet {
  MetamaskWallet()
      : super("Metamask", "walletlogos/logo_metamask.png",
            "https://metamask.io/download/") {
    isExtensionInstalled = true;
  }

  @override
  Future<void> initiateConnection() async {
    if (isExtensionInstalled) {
      try {
        final List<String> addresses = await web3.ethereum!.requestAccount();
        if (addresses.isEmpty) {
          throw Exception("Metamask: No address found.");
        }
        address = addresses.first;
      } on web3.EthereumUserRejected {
        throw Exception("Metamask: User reject modal.");
      } catch (err) {
        throw Exception(err);
      }
    } else {
      throw Exception("Metamask: extension not installed.");
    }
  }
}
