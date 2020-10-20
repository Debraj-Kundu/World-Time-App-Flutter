import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location;//location name
  String time;//time in location
  String flag;//url to asset flag icon
  String url;

  WorldTime({this.location, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    //set time to string
    time = now.toString();
  }

}