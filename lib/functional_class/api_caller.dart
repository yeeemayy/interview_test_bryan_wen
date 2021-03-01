
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiCaller {
  static const BASEURL = 'https://bestweb.my/interview_test/';
  static const APIKEY = 'interviewtest@8888';
  static const Map<String, String> API_DEFAULT_REQUEST_HEADERS = {
    "Content-Type": "application/x-www-form-urlencoded",
  };


  ///TODO: Create your api caller functions here
  // Below are sample functions to make GET and POST API calls, you can
  // write your own function too :)
  //
   static Future getFunction() async {
     var response = await http.get("https://www.getpostman.com/collections/4d746faa4c27b666871e", headers: API_DEFAULT_REQUEST_HEADERS);

     if (response.statusCode == 200){
       var data = jsonDecode(response.body);
       return data;
     } else {
       print(response.statusCode);
       return ; }


   }

   static Future postFunction(variable) async {
     var response = await http.post("https://www.getpostman.com/collections/4d746faa4c27b666871e",
         headers: API_DEFAULT_REQUEST_HEADERS ,
         body: {
           'param': variable,
         });

     if (response.statusCode == 200){
       var data = jsonDecode(response.body);
       return data;
     } else {
       print(response.statusCode);
       return ; }
   }

}
