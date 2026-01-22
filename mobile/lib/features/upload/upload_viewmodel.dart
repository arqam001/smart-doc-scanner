import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/services/api_service.dart';

class UploadViewModel extends ChangeNotifier {
  bool isLoading = false;
  Map<String, dynamic>? result;

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
    if (file == null) return;

    isLoading = true;
    notifyListeners();

    result = await ApiService.uploadDocument(File(file.path));

    isLoading = false;
    notifyListeners();
  }
}
