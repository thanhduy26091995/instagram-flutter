import 'package:instagram_flutter/domain/entity/album_dto.dart';
import 'package:instagram_flutter/domain/repository/album_repository_abstract.dart';
import 'package:instagram_flutter/domain/usecase/base_usecase.dart';

class GetAlbumListUseCase extends NoParamUseCase<List<AlbumDTO>> {
  final IAlbumRepository albumRepository;

  GetAlbumListUseCase(this.albumRepository);

  @override
  Future<List<AlbumDTO>> execute() async {
    return albumRepository.getAlbumList();
  }
}
