import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(
          data); //[jsonDecode is dynamic type(it can be either int,double or string),so var is must]
    } else {
      print(response.statusCode);
    }
  }
}
