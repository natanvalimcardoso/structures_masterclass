import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternetService {
  Future<bool> isConnected() async {
    var conectivityResult = await (Connectivity().checkConnectivity());
    
    return conectivityResult == ConnectivityResult.ethernet ||
        conectivityResult == ConnectivityResult.wifi ||
        conectivityResult == ConnectivityResult.mobile;
  }
}
