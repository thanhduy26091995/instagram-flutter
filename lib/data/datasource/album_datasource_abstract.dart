import 'package:instagram_flutter/data/network/response/album_response.dart';

abstract interface class IAlbumDataSource {
  Future<List<AlbumResponse>> getAlbumList();
}
