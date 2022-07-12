import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude; //use either 'late' or '?' for null safety
  double? longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // e = exception
      print(e);
    }
  }
}
