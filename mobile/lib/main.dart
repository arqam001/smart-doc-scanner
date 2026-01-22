import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/upload/upload_view.dart';
import 'features/upload/upload_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UploadViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AI Document Scanner',
        home: const UploadView(),
      ),
    );
  }
}
