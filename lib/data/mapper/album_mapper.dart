import 'package:instagram_flutter/data/network/response/album_response.dart';
import 'package:instagram_flutter/domain/entity/album_dto.dart';

class AlbumMapper {
  static AlbumDTO toAlbumDTO({required AlbumResponse response}) {
    return AlbumDTO(
        userId: response.userId ?? 0,
        id: response.id ?? 0,
        title: response.title ?? "");
  }
}
