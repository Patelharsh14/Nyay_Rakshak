import 'package:flutter/material.dart';
import 'package:nyay_1/Queries/querymodel.dart';
import 'package:provider/provider.dart';


class ChatStoragePage extends StatelessWidget {
  final String selectedName;

  ChatStoragePage({Key? key, required this.selectedName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryModel = context.watch<QueryModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Chat Submitted ',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Stored Queries:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: queryModel.storedQueries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(queryModel.storedQueries[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
