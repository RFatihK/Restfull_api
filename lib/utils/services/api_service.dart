import 'dart:convert';

import 'package:restfull_api/utils/constants/api_constans.dart';
import 'package:restfull_api/utils/models/comments_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<CommentsModel>> getComments() async {
    final response = await http.get(
      Uri.parse(url),
    );
    List<CommentsModel> comments = [];

    List<dynamic> responseList = jsonDecode(response.body);

    for (var i = 0; i < responseList.length; i++) {
      comments.add(
        CommentsModel.fromJson(responseList[i]),
      );
    }

    return comments;
  }
}
 