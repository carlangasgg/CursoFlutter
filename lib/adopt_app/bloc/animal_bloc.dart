import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_first_app/adopt_app/animal_model.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
  AnimalBloc() : super(AnimalState.initial()) {
    on<LoadAnimals>(_onLoadAnimals);
    on<ToggleFavorite>(_onToggleFavorite);
    on<ChangeFilter>(_onChangeFilter);
  }

  void _onLoadAnimals(LoadAnimals event, Emitter<AnimalState> emit) async {
    //log("_onLoadAnimals");
    emit(
      state.copyWith(pageState: AnimalPageStatus.loading),
    );
    try {
      await Future.delayed(
        const Duration(seconds: 4),
      );
      emit(state.copyWith(pageState: AnimalPageStatus.success));
    } catch (e) {
      emit(state.copyWith(pageState: AnimalPageStatus.failure));
    }
  }

  void _onToggleFavorite(ToggleFavorite event, Emitter<AnimalState> emit) {}

  void _onChangeFilter(ChangeFilter event, Emitter<AnimalState> emit) {}
}
