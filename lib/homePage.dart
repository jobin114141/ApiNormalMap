import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Photo.dart';
import 'package:flutter_application_1/services/photoServices.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

List<Photo>? photos;
bool isLoading = false;
class _homepageState extends State<homepage> {
  @override
  void initState() {
    getphotos();
    super.initState();
  }
  getphotos() async{
    photos=await Photoservices().getDetails();
      if (photos != null) {
      setState(() {
        isLoading = true;
      });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Normal API"),),
      body: ListView.builder(itemCount: photos?.length,itemBuilder: (ctx, index) {
        var photosItems = photos?[index];
        return Container(child: Text(photosItems?.title??"no title"),);
      }),
    );
  }
}
