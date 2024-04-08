import 'package:instagram_flutter/data/datasource/album_datasource.dart';
import 'package:instagram_flutter/data/mapper/album_mapper.dart';
import 'package:instagram_flutter/domain/entity/album_dto.dart';
import 'package:instagram_flutter/domain/repository/album_repository_abstract.dart';

class AlbumRepository implements IAlbumRepository {
  final AlbumDataSource _albumDataSource;

  AlbumRepository(this._albumDataSource);

  @override
  Future<List<AlbumDTO>> getAlbumList() async {
    final response = await _albumDataSource.getAlbumList();
    return response.map((e) => AlbumMapper.toAlbumDTO(response: e)).toList();
  }
}
