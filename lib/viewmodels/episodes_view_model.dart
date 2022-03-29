import 'package:first_web_server/datamodels/episode_item_model.dart';
import 'package:first_web_server/locator.dart';
import 'package:first_web_server/services/api.dart';
import 'package:flutter/material.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes = [];
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = await _api.getEpisodes();

    if (episodeResults is String) {
      // show error
    } else {
      _episodes = episodeResults;
    }
    notifyListeners();
  }

  void initialise() {
    notifyListeners();
  }
}
