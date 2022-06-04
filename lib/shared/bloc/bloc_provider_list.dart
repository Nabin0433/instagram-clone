// ignore_for_file: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:instagram_clone/shared/cubit/user_cubit.dart';

List<BlocProviderSingleChildWidget> get blocProviderList {
  return [
    BlocProvider(create: (context) => UserCubit()),
  ];
}
