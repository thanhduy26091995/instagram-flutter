import 'package:instagram_flutter/domain/entity/album_dto.dart';

abstract interface class IAlbumRepository {
  Future<List<AlbumDTO>> getAlbumList();
}
