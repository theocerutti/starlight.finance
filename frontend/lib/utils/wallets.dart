import 'package:frontend/types/metamaskwallet.dart';
import 'package:frontend/types/walletconnectwallet.dart';
import 'package:frontend/types/wallet.dart';

class SupportedWallets {
  static List<Wallet> wallets = [
    MetamaskWallet(),
    WalletConnectWallet(),
  ];
}
