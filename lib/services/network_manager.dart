import 'dart:convert';

import 'package:random_api_calling/model/character_model.dart';
import 'package:http/http.dart' as http;

class CharacterApi{

  Future<CharacterModel> fetchCharacter()async{
    const String url = 'https://dragonball-api.com/api/characters?limit=58';
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final body = jsonDecode(response.body);
      return CharacterModel.fromJson(body);
    }
    throw{
      Exception("error to load data")
    };

  }


}