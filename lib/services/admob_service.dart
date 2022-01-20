import 'dart:io';
class AdMobService {

  String? getAdMobAppId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-8143831381550467~2869062808';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-8143831381550467~4121292115';

    }
    return null;
  }

  String? getBannerAdId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-8143831381550467/1397581925';
    } else if (Platform.isAndroid) {
      // return 'ca-app-pub-8143831381550467/9574791167';
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

}
