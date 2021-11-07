import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled3/config.dart';
import 'package:untitled3/models/subject_model.dart';

class APIServices {
  static var client = http.Client();

  static Future<List<SubjectModel>> getSubject() async {
    var url = Uri.parse(Config.subjectAPI);

    final response = await http.get(url);

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['result']) {
      _temp.add(i);
    }

    return SubjectModel.subjectsFtromSnapshot(_temp);
  }
}
