library flutter_agify;

import 'package:http/http.dart' as http;
import 'dart:convert';

// For getting the age prediction data of only 1 name......

Future<Map> getAge({required String name, String? apiKey}) async {
  String targeturl = 'https://api.agify.io/?';

  // If apiKey is not given

  if (apiKey == null) {
    targeturl = targeturl + "name=$name";
    http.Response webresult = await http.get(Uri.parse(targeturl));
    var jsondata = jsonDecode(webresult.body);

    // For responses like {"error":"Invalid API key"}

    if (jsondata.runtimeType.toString() == "_JsonMap") {
      var data = jsondata as Map;
      if (data.keys.toList().contains("error")) {
        throw "Error: ${data["error"]}";
      }
    }
    var _name = jsondata["name"];
    var age = jsondata["age"];
    var count = jsondata["count"];

    return {"Name": _name, "Age": age, "Count": count};
  }

  // if apiKey is given

  targeturl = targeturl + "name=$name&apikey=$apiKey";
  http.Response webresult = await http.get(Uri.parse(targeturl));
  var jsondata = jsonDecode(webresult.body);

  // For responses like {"error":"Invalid API key"}

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }

  var _name = jsondata["name"];
  var age = jsondata["age"];
  var count = jsondata["count"];

  return {"Name": _name, "Age": age, "Count": count};
}

///////////////////////////////////
///////////////////////////////////

// For getting the age prediction data of several names...

Future<List> getAges({required List<String> names, String? apiKey}) async {
  String targeturl = 'https://api.agify.io/?';

  // If apiKey is not given

  if (apiKey == null) {
    for (var name in names) {
      if (names.last == name) {
        targeturl = targeturl + "name[]=$name";
      } else {
        targeturl = targeturl + "name[]=$name&";
      }
    }

    http.Response webresult = await http.get(Uri.parse(targeturl));
    var jsondata = jsonDecode(webresult.body);

    // For responses like {"error":"Invalid API key"}

    if (jsondata.runtimeType.toString() == "_JsonMap") {
      var data = jsondata as Map;
      if (data.keys.toList().contains("error")) {
        throw "Error: ${data["error"]}";
      }
    }

    return jsondata;
  }

  // if apiKey is given
  for (var name in names) {
    if (names.last == name) {
      targeturl = targeturl + "name[]=$name";
    } else {
      targeturl = targeturl + "name[]=$name&";
    }
  }

  targeturl = targeturl + "&apikey=$apiKey";

  http.Response webresult = await http.get(Uri.parse(targeturl));
  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }

  return jsondata;
}

///////////////////////////////////
///////////////////////////////////

// For getting the age prediction data of only 1 name but with country...

Future<Map> getAgeWithCountry(
    {required String name, required String country, String? apiKey}) async {
  String targeturl = 'https://api.agify.io/?';

  // If apiKey is not given

  if (apiKey == null) {
    targeturl = targeturl + "name=$name&country_id=$country";
    http.Response webresult = await http.get(Uri.parse(targeturl));
    var jsondata = jsonDecode(webresult.body);

    // For responses like {"error":"Invalid API key"}

    if (jsondata.runtimeType.toString() == "_JsonMap") {
      var data = jsondata as Map;
      if (data.keys.toList().contains("error")) {
        throw "Error: ${data["error"]}";
      }
    }
    var _name = jsondata["name"];
    var age = jsondata["age"];
    var count = jsondata["count"];
    var _country = jsondata["country_id"];

    return {"Name": _name, "Age": age, "Count": count, "Country": _country};
  }

  // if apiKey is given

  targeturl = targeturl + "name=$name&country_id=$country&apikey=$apiKey";
  http.Response webresult = await http.get(Uri.parse(targeturl));
  var jsondata = jsonDecode(webresult.body);

  // For responses like {"error":"Invalid API key"}

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }

  var _name = jsondata["name"];
  var age = jsondata["age"];
  var count = jsondata["count"];
  var _country = jsondata["country_id"];

  return {"Name": _name, "Age": age, "Count": count, "Country": _country};
}

///////////////////////////////////
///////////////////////////////////

// For getting the age prediction data of several names but with country...

Future<List> getAgesWithCountry(
    {required List<String> names,
    required String country,
    String? apiKey}) async {
  String targeturl = 'https://api.agify.io/?';

  if (apiKey == null) {
    for (var name in names) {
      if (names.last == name) {
        targeturl = targeturl + "name[]=$name";
      } else {
        targeturl = targeturl + "name[]=$name&";
      }
    }

    targeturl = targeturl + "&country_id=$country";

    http.Response webresult = await http.get(Uri.parse(targeturl));
    var jsondata = jsonDecode(webresult.body);

    // For responses like {"error":"Invalid API key"}

    if (jsondata.runtimeType.toString() == "_JsonMap") {
      var data = jsondata as Map;
      if (data.keys.toList().contains("error")) {
        throw "Error: ${data["error"]}";
      }
    }

    return jsondata;
  }

  // if apiKey is given
  for (var name in names) {
    if (names.last == name) {
      targeturl = targeturl + "name[]=$name";
    } else {
      targeturl = targeturl + "name[]=$name&";
    }
  }

  targeturl = targeturl + "&country_id=$country&apikey=$apiKey";

  http.Response webresult = await http.get(Uri.parse(targeturl));
  var jsondata = jsonDecode(webresult.body);

  if (jsondata.runtimeType.toString() == "_JsonMap") {
    var data = jsondata as Map;
    if (data.keys.toList().contains("error")) {
      throw "Error: ${data["error"]}";
    }
  }

  return jsondata;
}
