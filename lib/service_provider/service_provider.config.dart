// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../services/auth_service/authentication.dart' as _i13;
import '../services/editor/editor.dart' as _i9;
import '../services/editor/element_id_generator.dart' as _i3;
import '../services/file_picker/file_picker.dart' as _i4;
import '../services/image_editor/image_editor.dart' as _i5;
import '../services/screenshot_service/screenshot_service.dart' as _i7;
import '../services/timeline/timeline.dart' as _i8;
import '../ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart' as _i10;
import '../ui/screens/editor_screen/bloc/screenshot_cubit/screenshot_cubit.dart'
    as _i11;
import 'service_provider.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ElementIdGenerator>(() => _i3.ElementIdGenerator());
  gh.factory<_i4.FilePicker>(() => _i4.FilePicker());
  gh.factory<_i5.ImageEditor>(() => _i5.ImageEditor());
  gh.factory<_i6.Logger>(() => registerModule.logger);
  gh.factory<_i7.ScreenshotService>(() => _i7.ScreenshotService());
  gh.factory<_i8.Timeline<_i9.Editor>>(() => registerModule.editorTimeLine);
  gh.factory<_i10.EditorBloc>(() => _i10.EditorBloc(
      get<_i4.FilePicker>(),
      get<_i6.Logger>(),
      get<_i3.ElementIdGenerator>(),
      get<_i8.Timeline<_i9.Editor>>()));
  gh.factory<_i11.ScreenshotCubit>(() => _i11.ScreenshotCubit(
      get<_i7.ScreenshotService>(),
      get<_i4.FilePicker>(),
      get<_i6.Logger>(),
      get<_i5.ImageEditor>()));
  gh.factory<_i13.Authentication>(() => _i13.Authentication());
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
