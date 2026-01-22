import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'upload_viewmodel.dart';

class UploadView extends StatelessWidget {
  const UploadView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<UploadViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("AI Document Scanner")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: vm.pickImage,
              child: const Text("Pick Image"),
            ),
            const SizedBox(height: 20),
            vm.isLoading
                ? const CircularProgressIndicator()
                : vm.result != null
                    ? Expanded(child: Text(vm.result.toString()))
                    : const Text("No document processed yet")
          ],
        ),
      ),
    );
  }
}
