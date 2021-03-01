
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
   Future getAllMeal() async {
     var response =  await http.get("https:\/\/bestweb.my\/interview_test\/api\/meals\/get_all_meal?api_key=interviewtest@8888");

     if (response.statusCode == 200){
       var data = jsonDecode(response.body);
       return data;
     } else {
       print("Error occured");
       print(response.statusCode);
       return null ; }

   }

   Future createOrEditMeal(variable) async {
     var response = await http.post("https:\/\/bestweb.my\/interview_test\/api\/meals\/create_or_edit_meal?api_key=interviewtest@8888",
         headers: API_DEFAULT_REQUEST_HEADERS ,
         body: {
           'param': variable,
         });

     if (response.statusCode == 200){
       var data = jsonDecode(response.body);
       return data;
     } else {
       print(response.statusCode);
       return null; }
   }

}
