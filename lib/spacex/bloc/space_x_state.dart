part of 'space_x_bloc.dart';

abstract class SpacexState extends Equatable {
  const SpacexState();

  @override
  List<Object> get props => [];
}

class SpacexInitial extends SpacexState {
  @override
  List<Object> get props => [];
}

class SpacexLoading extends SpacexState {}

class SpacexInProgress extends SpacexState {
  @override
  List<Object> get props => [];
}

class SpacexLoaded extends SpacexState {
  final SpaceXModel spaceXModel;

  const SpacexLoaded(this.spaceXModel);

  @override
  List<Object> get props => [spaceXModel];
}

class SpacexSuccess extends SpacexState {
  @override
  List<Object> get props => [];
}

class SpacexFailed extends SpacexState {
  @override
  List<Object> get props => [];
}
