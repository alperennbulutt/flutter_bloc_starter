import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mystarter/spacex/models/space_x_model.dart';
import 'package:mystarter/spacex/resources/spacex_repository.dart';

part 'space_x_event.dart';
part 'space_x_state.dart';

class SpacexBloc extends Bloc<SpacexEvent, SpacexState> {
  final SpacexService _spacexService;
  SpacexBloc(this._spacexService) : super(SpacexInitial()) {
    on<LoadApiEvent>((event, emit) async {
      emit(SpacexInProgress());
      try {
        final spacexResponse = await _spacexService.getSpacexData();
        emit(SpacexLoaded(SpaceXModel.fromJson(spacexResponse)));
      } catch (e) {
        emit(SpacexFailed());
      }
    });
  }
}
