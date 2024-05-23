enum ImagePath {
  imgPath,
  imgPath2,
  imgPath3,
  imgPath4,
  imgPath5,
  imgPath6,
}

extension ImagePathExtension on ImagePath {
  String _path() {
    switch (this) {
      case ImagePath.imgPath:
        return '1';
      case ImagePath.imgPath2:
        return '2';
      case ImagePath.imgPath3:
        return '3';
      case ImagePath.imgPath4:
        return '4';
      case ImagePath.imgPath5:
        return '5';
      case ImagePath.imgPath6:
        return '6';
    }
  }

  String get imgPath => 'assets/png/${_path()}.png';
}
