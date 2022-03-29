import 'dart:convert';

import 'package:first_web_server/datamodels/episode_item_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String _apiEndpoint =
      'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getEpisodes() async {
    var response = await http.get(Uri.parse('$_apiEndpoint/courseEpisodes'));

    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();
      return episodes;
    }

    // something wrong happened
    return 'Could not fetch the episodes at this time';
  }
}
