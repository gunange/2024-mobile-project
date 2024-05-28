import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GetApiDataController {
  String nama = "Nama Saya";
  Future<void> ambilData() async {
    var url = Uri.parse(
      'https://fakestoreapi.com/products/2',
    );

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      this.nama = response.body.toString();

      //   var jsonResponse =
      //       convert.jsonDecode(response.body) as Map<String, dynamic>;
      //   var itemCount = jsonResponse['totalItems'];
      //   print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
