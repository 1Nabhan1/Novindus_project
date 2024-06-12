import 'dart:convert';
/// status : true
/// message : "Success"
/// patient : [{"id":1522,"patientdetails_set":[{"id":2860,"male":"1","female":"1","patient":1522,"treatment":100,"treatment_name":"Head Massage"}],"branch":{"id":166,"name":"KUMARAKOM","patients_count":0,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true},"user":"mrjkh","payment":"Paid","name":"nabhan","phone":"gg","address":"MainSt","price":null,"total_amount":300,"discount_amount":3200,"advance_amount":2300,"balance_amount":3200,"date_nd_time":"2024-02-01T10:24:00","is_active":true,"created_at":"2024-06-11T14:15:58.934817","updated_at":"2024-06-11T14:15:58.934832"},null]

PatientListModel patientListModelFromJson(String str) => PatientListModel.fromJson(json.decode(str));
String patientListModelToJson(PatientListModel data) => json.encode(data.toJson());
class PatientListModel {
  PatientListModel({
      bool? status, 
      String? message, 
      List<Patient>? patient,}){
    _status = status;
    _message = message;
    _patient = patient;
}

  PatientListModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['patient'] != null) {
      _patient = [];
      json['patient'].forEach((v) {
        _patient?.add(Patient.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Patient>? _patient;
PatientListModel copyWith({  bool? status,
  String? message,
  List<Patient>? patient,
}) => PatientListModel(  status: status ?? _status,
  message: message ?? _message,
  patient: patient ?? _patient,
);
  bool? get status => _status;
  String? get message => _message;
  List<Patient>? get patient => _patient;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_patient != null) {
      map['patient'] = _patient?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1522
/// patientdetails_set : [{"id":2860,"male":"1","female":"1","patient":1522,"treatment":100,"treatment_name":"Head Massage"}]
/// branch : {"id":166,"name":"KUMARAKOM","patients_count":0,"location":"Kumarakom, Kottayam","phone":"9946331452, 9747331452","mail":"user123@gmail.com","address":"Kottayam, Kerala-686563","gst":"","is_active":true}
/// user : "mrjkh"
/// payment : "Paid"
/// name : "nabhan"
/// phone : "gg"
/// address : "MainSt"
/// price : null
/// total_amount : 300
/// discount_amount : 3200
/// advance_amount : 2300
/// balance_amount : 3200
/// date_nd_time : "2024-02-01T10:24:00"
/// is_active : true
/// created_at : "2024-06-11T14:15:58.934817"
/// updated_at : "2024-06-11T14:15:58.934832"

Patient patientFromJson(String str) => Patient.fromJson(json.decode(str));
String patientToJson(Patient data) => json.encode(data.toJson());
class Patient {
  Patient({
      num? id, 
      List<PatientdetailsSet>? patientdetailsSet, 
      Branch? branch, 
      String? user, 
      String? payment, 
      String? name, 
      String? phone, 
      String? address, 
      dynamic price, 
      num? totalAmount, 
      num? discountAmount, 
      num? advanceAmount, 
      num? balanceAmount, 
      String? dateNdTime, 
      bool? isActive, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _patientdetailsSet = patientdetailsSet;
    _branch = branch;
    _user = user;
    _payment = payment;
    _name = name;
    _phone = phone;
    _address = address;
    _price = price;
    _totalAmount = totalAmount;
    _discountAmount = discountAmount;
    _advanceAmount = advanceAmount;
    _balanceAmount = balanceAmount;
    _dateNdTime = dateNdTime;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Patient.fromJson(dynamic json) {
    _id = json['id'];
    if (json['patientdetails_set'] != null) {
      _patientdetailsSet = [];
      json['patientdetails_set'].forEach((v) {
        _patientdetailsSet?.add(PatientdetailsSet.fromJson(v));
      });
    }
    _branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    _user = json['user'];
    _payment = json['payment'];
    _name = json['name'];
    _phone = json['phone'];
    _address = json['address'];
    _price = json['price'];
    _totalAmount = json['total_amount'];
    _discountAmount = json['discount_amount'];
    _advanceAmount = json['advance_amount'];
    _balanceAmount = json['balance_amount'];
    _dateNdTime = json['date_nd_time'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  List<PatientdetailsSet>? _patientdetailsSet;
  Branch? _branch;
  String? _user;
  String? _payment;
  String? _name;
  String? _phone;
  String? _address;
  dynamic _price;
  num? _totalAmount;
  num? _discountAmount;
  num? _advanceAmount;
  num? _balanceAmount;
  String? _dateNdTime;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
Patient copyWith({  num? id,
  List<PatientdetailsSet>? patientdetailsSet,
  Branch? branch,
  String? user,
  String? payment,
  String? name,
  String? phone,
  String? address,
  dynamic price,
  num? totalAmount,
  num? discountAmount,
  num? advanceAmount,
  num? balanceAmount,
  String? dateNdTime,
  bool? isActive,
  String? createdAt,
  String? updatedAt,
}) => Patient(  id: id ?? _id,
  patientdetailsSet: patientdetailsSet ?? _patientdetailsSet,
  branch: branch ?? _branch,
  user: user ?? _user,
  payment: payment ?? _payment,
  name: name ?? _name,
  phone: phone ?? _phone,
  address: address ?? _address,
  price: price ?? _price,
  totalAmount: totalAmount ?? _totalAmount,
  discountAmount: discountAmount ?? _discountAmount,
  advanceAmount: advanceAmount ?? _advanceAmount,
  balanceAmount: balanceAmount ?? _balanceAmount,
  dateNdTime: dateNdTime ?? _dateNdTime,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  List<PatientdetailsSet>? get patientdetailsSet => _patientdetailsSet;
  Branch? get branch => _branch;
  String? get user => _user;
  String? get payment => _payment;
  String? get name => _name;
  String? get phone => _phone;
  String? get address => _address;
  dynamic get price => _price;
  num? get totalAmount => _totalAmount;
  num? get discountAmount => _discountAmount;
  num? get advanceAmount => _advanceAmount;
  num? get balanceAmount => _balanceAmount;
  String? get dateNdTime => _dateNdTime;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_patientdetailsSet != null) {
      map['patientdetails_set'] = _patientdetailsSet?.map((v) => v.toJson()).toList();
    }
    if (_branch != null) {
      map['branch'] = _branch?.toJson();
    }
    map['user'] = _user;
    map['payment'] = _payment;
    map['name'] = _name;
    map['phone'] = _phone;
    map['address'] = _address;
    map['price'] = _price;
    map['total_amount'] = _totalAmount;
    map['discount_amount'] = _discountAmount;
    map['advance_amount'] = _advanceAmount;
    map['balance_amount'] = _balanceAmount;
    map['date_nd_time'] = _dateNdTime;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 166
/// name : "KUMARAKOM"
/// patients_count : 0
/// location : "Kumarakom, Kottayam"
/// phone : "9946331452, 9747331452"
/// mail : "user123@gmail.com"
/// address : "Kottayam, Kerala-686563"
/// gst : ""
/// is_active : true

Branch branchFromJson(String str) => Branch.fromJson(json.decode(str));
String branchToJson(Branch data) => json.encode(data.toJson());
class Branch {
  Branch({
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

  Branch.fromJson(dynamic json) {
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
Branch copyWith({  num? id,
  String? name,
  num? patientsCount,
  String? location,
  String? phone,
  String? mail,
  String? address,
  String? gst,
  bool? isActive,
}) => Branch(  id: id ?? _id,
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

/// id : 2860
/// male : "1"
/// female : "1"
/// patient : 1522
/// treatment : 100
/// treatment_name : "Head Massage"

PatientdetailsSet patientdetailsSetFromJson(String str) => PatientdetailsSet.fromJson(json.decode(str));
String patientdetailsSetToJson(PatientdetailsSet data) => json.encode(data.toJson());
class PatientdetailsSet {
  PatientdetailsSet({
      num? id, 
      String? male, 
      String? female, 
      num? patient, 
      num? treatment, 
      String? treatmentName,}){
    _id = id;
    _male = male;
    _female = female;
    _patient = patient;
    _treatment = treatment;
    _treatmentName = treatmentName;
}

  PatientdetailsSet.fromJson(dynamic json) {
    _id = json['id'];
    _male = json['male'];
    _female = json['female'];
    _patient = json['patient'];
    _treatment = json['treatment'];
    _treatmentName = json['treatment_name'];
  }
  num? _id;
  String? _male;
  String? _female;
  num? _patient;
  num? _treatment;
  String? _treatmentName;
PatientdetailsSet copyWith({  num? id,
  String? male,
  String? female,
  num? patient,
  num? treatment,
  String? treatmentName,
}) => PatientdetailsSet(  id: id ?? _id,
  male: male ?? _male,
  female: female ?? _female,
  patient: patient ?? _patient,
  treatment: treatment ?? _treatment,
  treatmentName: treatmentName ?? _treatmentName,
);
  num? get id => _id;
  String? get male => _male;
  String? get female => _female;
  num? get patient => _patient;
  num? get treatment => _treatment;
  String? get treatmentName => _treatmentName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['male'] = _male;
    map['female'] = _female;
    map['patient'] = _patient;
    map['treatment'] = _treatment;
    map['treatment_name'] = _treatmentName;
    return map;
  }

}