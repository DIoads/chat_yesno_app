import 'package:chat_yesno_app/domain/entities/message.dart';
import 'package:chat_yesno_app/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('http://yesno.wtf/api');
    final YesNoModel ynmodel = YesNoModel.fromJson(response.data);
    return ynmodel.toMessageEntity();
  }
}
