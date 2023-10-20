import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_services_app/services/onboarding_screen.dart/bloc/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  OnboardingCubit() : super(OnboardingIntialStates());
  static OnboardingCubit get(context) => BlocProvider.of(context);

   



}


