import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:aid_optics/services/imageprocessing_service.dart';
import 'package:aid_optics/services/regula_service.dart';
import 'package:aid_optics/services/tts_service.dart';
import 'package:aid_optics/ui/views/face/facerec_view.dart';
import 'package:aid_optics/ui/views/hardware/hardware_view.dart';
import 'package:aid_optics/ui/views/inapp/inapp_view.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView, path: '/home'),
    MaterialRoute(page: InAppView, path: '/in_app'),
    MaterialRoute(page: HardwareView, path: '/hardware'),
    MaterialRoute(page: FaceRecView, path: '/face_train'),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: TTSService),
    LazySingleton(classType: ImageProcessingService),
    LazySingleton(classType: RegulaService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
