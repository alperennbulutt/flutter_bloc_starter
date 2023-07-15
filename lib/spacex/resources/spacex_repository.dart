import 'package:mystarter/rest/api_helpers/api_base_helpers.dart';
import 'package:mystarter/constant/api_constants.dart' as appConstant;

class SpacexService {
  getSpacexData() async {
    final response = await ApiBaseHelper().get(appConstant.BASE_URL);
    return response;
  }
}
