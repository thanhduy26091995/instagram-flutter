import 'package:instagram_flutter/data/repository/album_repository.dart';
import 'package:instagram_flutter/di/datasource_module.dart';

mixin RepositoryModule on DataSourceModule {
  AlbumRepository get albumRepository {
    return AlbumRepository(albumDataSource);
  }
}
