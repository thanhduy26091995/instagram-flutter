import 'package:instagram_flutter/domain/entity/album_dto.dart';
import 'package:instagram_flutter/domain/usecase/album/get_album_list_usecase.dart';
import 'package:instagram_flutter/presentation/widgets/loading_indicator.dart';
import 'package:get/get.dart';

class AlbumController extends GetxController {
  final GetAlbumListUseCase getAlbumListUseCase;

  AlbumController({required this.getAlbumListUseCase});

  // Album list
  var albumList = RxList<AlbumDTO>([]);

  Future<void> fetchAlbumList() async {
    if (albumList.isEmpty) {
      _showLoadingIndicator();
      try {
        albumList.value = await getAlbumListUseCase.execute();
        _hideLoadingIndicator();
      } on String {
        _hideLoadingIndicator();
      }
    }
  }

  void _showLoadingIndicator() {
    Future.delayed(const Duration(milliseconds: 100), () async {
      Get.generalDialog(
        pageBuilder: (_, __, ___) {
          return const LoadingIndicator();
        },
        transitionDuration: const Duration(milliseconds: 10),
      );
    });
  }

  void _hideLoadingIndicator() {
    Get.back();
  }

  @override
  void onInit() {
    super.onInit();
    fetchAlbumList();
  }
}
