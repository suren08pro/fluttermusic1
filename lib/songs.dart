import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class songss extends StatelessWidget {
    songss({super.key});
    Future<List<String>> getAssetFileNames() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String assetsPath = '${appDirectory.path}/appday1/assets/song/sharry_maan';
    List<FileSystemEntity> files = Directory(assetsPath).listSync();
    List<String> fileNames = [];
    for (var file in files) {
      if (file is File) {
        fileNames.add(file.path.split('/').last);
      }
    }
    return fileNames;
  }
   List<String> assetFileNames=[];
  tx() async {
     assetFileNames = await getAssetFileNames();
  }
  /*Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/song');
  }
  List<String> smsong=[];
  var song={'Sharry Mann':smsong};*/
  /*main() async {
 List<String> assetFileNames = await getAssetFileNames();
  print(assetFileNames);
  }*/
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Text('${assetFileNames.length}'),
      ),
    );
  }
}