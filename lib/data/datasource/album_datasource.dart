import 'package:instagram_flutter/data/datasource/album_datasource_abstract.dart';
import 'package:instagram_flutter/data/network/constants.dart';
import 'package:instagram_flutter/data/network/response/album_response.dart';
import 'package:instagram_flutter/network/api_client/default_remote_datasource.dart';

class AlbumDataSource extends DefaultRemoteDataSource<List<AlbumResponse>>
    implements IAlbumDataSource {
  AlbumDataSource(super.client, super.jsonTransformer);

  @override
  Future<List<AlbumResponse>> getAlbumList() async {
    final response = await get(url: EndPoint.getAlbumList, parameters: {});
    return response;
  }
}
