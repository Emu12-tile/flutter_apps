import 'package:http/http.dart' as http ;
import 'dart:convert';
class WorldTime{
  String? location; //location name for ui
  String? time;
  String? flag;
  String? url;
  // bool isDayTime;
  WorldTime({this.location,this.flag, this.url});

  Future <void> getTime() async{
    var response=await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data=jsonDecode(response.body);
    String datetime=data['datetime'];
    String offset=data['utc_offset'].substring(1,3);
    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours:int.parse(offset)));
    time=now.toString();
    // var response = await http.get(
    //   Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    // );
    // Map data=jsonDecode(response.body);
    // print(data);
    // print(data['title']);
  }


}
