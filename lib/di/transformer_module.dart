import 'package:instagram_flutter/data/network/transformer/album_transformer.dart';

mixin TransformerModule {
  AlbumTransformer get albumTransformer {
    return AlbumTransformer();
  }
}
