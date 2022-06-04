// upload files to the firebase storage

import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImageToFirebase({
    required String folder,
    required Uint8List file,
    bool isPost = false,
  }) async {
    Reference ref = _storage.ref().child(folder).child(_auth.currentUser!.uid);

    UploadTask uploadTask = ref.putData(file);

    TaskSnapshot snap = await uploadTask;

    String url = await snap.ref.getDownloadURL();
    return url;
  }
}
