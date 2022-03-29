import 'package:first_web_server/datamodels/season_details_model.dart';
import 'package:first_web_server/viewmodels/episodes_view_model.dart';
import 'package:first_web_server/widgets/episodes_list/episodes_list.dart';
import 'package:first_web_server/widgets/season_details/season_details.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpisodesViewModel>.reactive(
      viewModelBuilder: () => EpisodesViewModel(),
      onModelReady: (viewModel) => viewModel.getEpisodes(),
      builder: (context, viewModel, child) => SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 100),
              SeasonDetails(
                details: SeasonDetailsModel(
                  title: 'SEASON 1',
                  description:
                      'This season covers the absolute basics of Flutter Web Dev to get us up and running with a basic web app.',
                ),
              ),
              const SizedBox(height: 50),
              viewModel.episodes == null
                  ? CircularProgressIndicator()
                  : EpisodesList(episodes: viewModel.episodes),
            ]),
      ),
    );
  }
}
