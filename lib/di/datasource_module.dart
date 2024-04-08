import 'package:instagram_flutter/data/datasource/album_datasource.dart';
import 'package:instagram_flutter/di/client_module.dart';
import 'package:instagram_flutter/di/transformer_module.dart';

mixin DataSourceModule on ClientModule, TransformerModule {
  AlbumDataSource get albumDataSource {
    return AlbumDataSource(apiClient, albumTransformer);
  }
}
