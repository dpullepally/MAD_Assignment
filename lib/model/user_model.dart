class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;
  String? userRole;
  String? registrationTime;

  UserModel({this.uid, this.email, this.firstName, this.secondName, this.userRole, this.registrationTime});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      userRole: map['userRole'],
      registrationTime: map['registrationTime']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'userRole':userRole,
      'registrationTime':registrationTime,
    };
  }
}
