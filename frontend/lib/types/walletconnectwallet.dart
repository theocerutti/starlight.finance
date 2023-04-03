import 'wallet.dart';

class WalletConnectWallet extends Wallet {
  WalletConnectWallet()
      : super("WalletConnect", "walletlogos/logo_walletconnect.png",
            "https://walletconnect.com/");

  @override
  Future<void> initiateConnection() async {}
}
