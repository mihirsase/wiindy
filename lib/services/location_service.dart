import 'package:location/location.dart' as loc;
import 'package:permission_handler/permission_handler.dart';
import 'package:wiindy/services/notifier.dart';

class LocationService {
  static final LocationService instance = LocationService._();

  LocationService._() {
    // To load value to location data object
    getLocationData();
  }

  loc.Location location = loc.Location();

  Future<bool> checkLocationPermission() async {
    bool serviceStatus =
        (await Permission.locationWhenInUse.serviceStatus) == ServiceStatus.enabled;
    PermissionStatus permissionStatus = await Permission.locationWhenInUse.status;

    if (serviceStatus == true && permissionStatus == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }

  Future<loc.LocationData?> getLocationData() async {
    try {
      bool status = await checkLocationPermission();
      if (status == true) {
        return await location.getLocation();
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> enableLocationSharing({
    required Function onGranted,
  }) async {
    bool serviceStatus =
        (await Permission.locationWhenInUse.serviceStatus) == ServiceStatus.enabled;

    if (serviceStatus == false) {
      serviceStatus = await location.requestService();
    }

    if (serviceStatus == false) {
      Notifier.instance.notify(
        notifType: NotifType.warning,
        message: "Please enable location services",
      );
      return;
    }

    if (serviceStatus == true) {
      PermissionStatus permissionStatus = await Permission.locationWhenInUse.status;

      // Asking for permission 1st time
      if (permissionStatus != PermissionStatus.granted) {
        permissionStatus = await Permission.locationWhenInUse.request();

        // ------------------------------------------------------------
        if (permissionStatus == PermissionStatus.granted) {
          permissionStatus = await Permission.locationWhenInUse.status;
          if (permissionStatus == PermissionStatus.denied) {}
        }
        // ------------------------------------------------------------
      }

      // Granted Limited
      if (permissionStatus == PermissionStatus.limited) {
        Notifier.instance.notify(
          notifType: NotifType.warning,
          message: "Please select allow while using the app",
        );
        return;
      }

      // Denied
      if (permissionStatus == PermissionStatus.denied) {
        Notifier.instance.notify(
          notifType: NotifType.warning,
          message: "Please allow location permission",
        );
        return;
      }

      // Denied Forever
      if (permissionStatus == PermissionStatus.permanentlyDenied ||
          permissionStatus == PermissionStatus.restricted) {
        Notifier.instance.notify(
          notifType: NotifType.warning,
          message: "Open your app settings and allow location permission to continue",
        );
        return;
      }

      // Success Scenerio - Granted
      if (permissionStatus == PermissionStatus.granted) {
        onGranted();
      }
    }
  }
}
