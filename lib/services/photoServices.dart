import 'dart:convert';
import 'package:flutter_application_1/model/Photo.dart';
import 'package:http/http.dart'as http;

class Photoservices{
  Future<List<Photo>?>getDetails()async{
    final url="https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      print(response.body);
     
      List<dynamic> json = jsonDecode(response.body);
      return json.map((data)=>Photo.fromJson(data)).toList();
    }else{
      throw Exception("Error occured");
    }

  }
}