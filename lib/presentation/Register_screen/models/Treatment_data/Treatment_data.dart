import 'dart:convert';
/// status : true
/// message : "Success"
/// treatments : [{"id":100,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Head Massage","duration":"15 minutes ","price":"500","is_active":true,"created_at":"2023-11-21T08:00:18.623502","updated_at":"2023-12-19T15:31:41.916701"},{"id":90,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Foot Massage With Kizhi","duration":"60 minutes ","price":"2000","is_active":true,"created_at":"2023-11-20T23:33:09.228163","updated_at":"2023-11-20T23:33:09.228183"},{"id":86,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Herbal Face Pack","duration":"45 minutes ","price":"1200","is_active":true,"created_at":"2023-11-20T23:27:06.277342","updated_at":"2023-11-20T23:27:06.277362"},{"id":85,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Foot Massage ","duration":"30 minutes ","price":"1000","is_active":true,"created_at":"2023-11-20T23:26:17.244861","updated_at":"2023-11-20T23:26:17.244881"},{"id":79,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Pain Relif Treatmemt (Kerala vital point massage with podi kizhi)","duration":"100 minutes ","price":"3000","is_active":true,"created_at":"2023-11-20T23:21:24.539652","updated_at":"2023-11-20T23:21:24.539674"},{"id":75,"branches":[{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}],"name":"Ayurvedic Cream Massage","duration":"90 minutes","price":"3000","is_active":true,"created_at":"2023-11-10T15:19:20.779527","updated_at":"2023-11-20T10:47:35.022289"}]

TreatmentData treatmentDataFromJson(String str) => TreatmentData.fromJson(json.decode(str));
String treatmentDataToJson(TreatmentData data) => json.encode(data.toJson());
class TreatmentData {
  TreatmentData({
      bool? status,
      String? message,
      List<Treatments>? treatments,}){
    _status = status;
    _message = message;
    _treatments = treatments;
}

  TreatmentData.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['treatments'] != null) {
      _treatments = [];
      json['treatments'].forEach((v) {
        _treatments?.add(Treatments.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Treatments>? _treatments;
TreatmentData copyWith({  bool? status,
  String? message,
  List<Treatments>? treatments,
}) => TreatmentData(  status: status ?? _status,
  message: message ?? _message,
  treatments: treatments ?? _treatments,
);
  bool? get status => _status;
  String? get message => _message;
  List<Treatments>? get treatments => _treatments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_treatments != null) {
      map['treatments'] = _treatments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 100
/// branches : [{"id":163,"name":"Thondayadu","patients_count":1,"location":"Kozhikode","phone":"9846123456","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":162,"name":"Nadakkavu","patients_count":2,"location":"Kozhikode","phone":"9946331452,9747331452","mail":"user123@gmail.com","address":"Kozhikode","gst":"","is_active":true},{"id":164,"name":"Edappali","patients_count":2,"location":"Kochi","phone":"9846123456","mail":"user123@gmail.com","address":"Kochi, Kerala-685565","gst":"","is_active":true},{"id":166,"name":"KUMARAKOM","patients_count":2,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}]
/// name : "Head Massage"
/// duration : "15 minutes "
/// price : "500"
/// is_active : true
/// created_at : "2023-11-21T08:00:18.623502"
/// updated_at : "2023-12-19T15:31:41.916701"

Treatments treatmentsFromJson(String str) => Treatments.fromJson(json.decode(str));
String treatmentsToJson(Treatments data) => json.encode(data.toJson());
class Treatments {
  Treatments({
      int? id,
      List<Branches>? branches,
      String? name,
      String? duration,
      String? price,
      bool? isActive,
      String? createdAt,
      String? updatedAt,}){
    _id = id;
    _branches = branches;
    _name = name;
    _duration = duration;
    _price = price;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Treatments.fromJson(dynamic json) {
    _id = json['id'];
    if (json['branches'] != null) {
      _branches = [];
      json['branches'].forEach((v) {
        _branches?.add(Branches.fromJson(v));
      });
    }
    _name = json['name'];
    _duration = json['duration'];
    _price = json['price'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  List<Branches>? _branches;
  String? _name;
  String? _duration;
  String? _price;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
Treatments copyWith({  int? id,
  List<Branches>? branches,
  String? name,
  String? duration,
  String? price,
  bool? isActive,
  String? createdAt,
  String? updatedAt,
}) => Treatments(  id: id ?? _id,
  branches: branches ?? _branches,
  name: name ?? _name,
  duration: duration ?? _duration,
  price: price ?? _price,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  List<Branches>? get branches => _branches;
  String? get name => _name;
  String? get duration => _duration;
  String? get price => _price;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_branches != null) {
      map['branches'] = _branches?.map((v) => v.toJson()).toList();
    }
    map['name'] = _name;
    map['duration'] = _duration;
    map['price'] = _price;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 163
/// name : "Thondayadu"
/// patients_count : 1
/// location : "Kozhikode"
/// phone : "9846123456"
/// mail : "user123@gmail.com"
/// address : "Kozhikode"
/// gst : ""
/// is_active : true

Branches branchesFromJson(String str) => Branches.fromJson(json.decode(str));
String branchesToJson(Branches data) => json.encode(data.toJson());
class Branches {
  Branches({
      num? id,
      String? name,
      num? patientsCount,
      String? location,
      String? phone,
      String? mail,
      String? address,
      String? gst,
      bool? isActive,}){
    _id = id;
    _name = name;
    _patientsCount = patientsCount;
    _location = location;
    _phone = phone;
    _mail = mail;
    _address = address;
    _gst = gst;
    _isActive = isActive;
}

  Branches.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _patientsCount = json['patients_count'];
    _location = json['location'];
    _phone = json['phone'];
    _mail = json['mail'];
    _address = json['address'];
    _gst = json['gst'];
    _isActive = json['is_active'];
  }
  num? _id;
  String? _name;
  num? _patientsCount;
  String? _location;
  String? _phone;
  String? _mail;
  String? _address;
  String? _gst;
  bool? _isActive;
Branches copyWith({  num? id,
  String? name,
  num? patientsCount,
  String? location,
  String? phone,
  String? mail,
  String? address,
  String? gst,
  bool? isActive,
}) => Branches(  id: id ?? _id,
  name: name ?? _name,
  patientsCount: patientsCount ?? _patientsCount,
  location: location ?? _location,
  phone: phone ?? _phone,
  mail: mail ?? _mail,
  address: address ?? _address,
  gst: gst ?? _gst,
  isActive: isActive ?? _isActive,
);
  num? get id => _id;
  String? get name => _name;
  num? get patientsCount => _patientsCount;
  String? get location => _location;
  String? get phone => _phone;
  String? get mail => _mail;
  String? get address => _address;
  String? get gst => _gst;
  bool? get isActive => _isActive;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['patients_count'] = _patientsCount;
    map['location'] = _location;
    map['phone'] = _phone;
    map['mail'] = _mail;
    map['address'] = _address;
    map['gst'] = _gst;
    map['is_active'] = _isActive;
    return map;
  }

}