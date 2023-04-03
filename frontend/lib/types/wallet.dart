import 'package:url_launcher/url_launcher.dart';

abstract class Wallet {
  Wallet(this.name, this.icon, this.installationDocumentationUrl);

  final String name;
  final String? icon;
  String address = "";
  bool isConnected = false;
  bool isExtensionInstalled = false;
  final String installationDocumentationUrl;

  Future<void> initiateConnection();

  void openInstallationDocumentation() {
    launchUrl(Uri.parse(installationDocumentationUrl));
  }
}
