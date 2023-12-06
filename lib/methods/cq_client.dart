import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
const ip = "192.168.77.227";

const BACKEND_URL = "https://$ip/pass";



class CQClient {

  CQClient();




  Future<dynamic> command<T>(String module, String command, dynamic data) async {
    final url = '$BACKEND_URL/api/$module/$command';
   // Map<String, String> requestHeaders = {'Content-type': 'application/json', 'Accept': 'application/json'};
    //var response = await http.post(Uri.parse(url),body:json.encode(data),headers: requestHeaders);
    var response = await http.post(Uri.parse(url),body:json.encode(data));

    return jsonDecode(response.body);

  }



}