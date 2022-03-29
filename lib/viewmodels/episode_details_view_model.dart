import 'package:first_web_server/datamodels/episode_item_model.dart';
import 'package:first_web_server/locator.dart';
import 'package:first_web_server/services/api.dart';
import 'package:flutter/material.dart';

class EpisodeDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  late EpisodeItemModel _episode;

  EpisodeItemModel get episode => _episode;

  Future getEpisodeData(int id) async {
    var response = await _api.getEpisode(id);

    if (response is String) {
      _episode = EpisodeItemModel(title: response);
    } else {
      _episode = response;
    }
    notifyListeners();
  }
}
