import 'package:instagram_flutter/network/api_client/session_provider.dart';

class DefaultSessionProvider implements ISessionProvider {
  @override
  String getBaseUrl() {
    return "https://jsonplaceholder.typicode.com";
  }

  @override
  Map<String, String> getHeaders() {
    return {};
  }
}
