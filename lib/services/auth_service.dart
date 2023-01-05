import 'package:saveshamo/models/user_model.dart';

class AuthService{

  String baseUrl = 'https:shamo-backend.buildwithangga.id/api';

  Future<UserModel> register({
    required String name, 
  }) async {
    var url ='test';

    var response = await http.post(
      url,
    );

    if(response.statusCode == 200) {
      return user;
    } else {
      throw Exception('gagal');
    }
  },
}