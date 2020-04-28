
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  final _auth = FirebaseAuth.instance;
  final _store =Firestore.instance;
  Future<AuthResult> createUser({String email="", String password="",String fullname, String number}) async{
  try {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password)
    .then(
      (currentUser) async {
        _store.collection("dangerzoneUsers")
        .document(currentUser.user.uid)
        .setData({
          "Full_name": fullname,
          "Number": number,
          "UID": currentUser.user.uid
        });
      }
    );
  } catch (e) {
    print(e);
  } 
  return null;
  }
  Future<FirebaseUser> getCurrentUser() async{
    try {
      return await _auth.currentUser();
    } catch (e) {
      print(e);
    }
    return null;
  }
  Future<AuthResult> loginUser({String email="", String password=""}) async{
  try {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print(e);
  } 
  return null;
  }
  Future<void> signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){

    }
  }
}