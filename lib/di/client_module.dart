import 'package:instagram_flutter/di/session_provider_module.dart';
import 'package:instagram_flutter/network/api_client/http_client.dart';

mixin ClientModule on DefaultSessionProviderModule {
  APIClient get apiClient {
    return APIClient(defaultSessionProvider);
  }
}
