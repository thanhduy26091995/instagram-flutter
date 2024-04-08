import 'package:instagram_flutter/di/client_module.dart';
import 'package:instagram_flutter/di/datasource_module.dart';
import 'package:instagram_flutter/di/repository_module.dart';
import 'package:instagram_flutter/di/session_provider_module.dart';
import 'package:instagram_flutter/di/transformer_module.dart';
import 'package:instagram_flutter/domain/usecase/album/get_album_list_usecase.dart';
import 'package:instagram_flutter/presentation/album/album_controller.dart';
import 'package:get/get.dart';

class AlbumBinding extends Bindings
    with
        TransformerModule,
        DefaultSessionProviderModule,
        ClientModule,
        DataSourceModule,
        RepositoryModule {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumController(
        getAlbumListUseCase: GetAlbumListUseCase(albumRepository)));
  }
}
