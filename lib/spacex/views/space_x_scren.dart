import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mystarter/spacex/bloc/space_x_bloc.dart';

class SpacexScreen extends StatelessWidget {
  static const String Route = '/';
  const SpacexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bored Screen"),
      ),
      body: BlocBuilder<SpacexBloc, SpacexState>(
        builder: (context, state) {
          if (state is SpacexInitial) {
            return const Text("Initial Text");
          }
          if (state is SpacexInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SpacexLoaded) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    state.spaceXModel.name!,
                  ),
                  Text(
                    state.spaceXModel.rocket!,
                  ),
                  Text(
                    state.spaceXModel.datePrecision.toString(),
                  ),
                ],
              ),
            );
          }
          return Center(child: const Text("Failed"));
        },
      ),
    );
  }
}
