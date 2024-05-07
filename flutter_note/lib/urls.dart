import 'dart:convert';
import 'package:http/http.dart' as http;

class Note {
  final String body;

  const Note ({
    required this.body,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(body: json['body']);
  }
}

class NoteService {
  Future<List<Note>> getNote() async {
    final response  = await http.get(Uri.parse("http://127.0.0.1:8000/notes/"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<Note> list = [];
      
      for (var i = 0; i < data['result'].length; i++) {

      }    
      return list;
    } else {
      throw Exception('Http Failed');
    }

  }
}