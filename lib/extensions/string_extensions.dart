import 'package:first_web_server/datamodels/routing_data.dart';

extension StringExtensions on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);
    print('queryParameters: ${uriData.queryParameters} path: ${uriData.path}');
    return RoutingData(
        route: uriData.path, queryParameters: uriData.queryParameters);
  }
}
