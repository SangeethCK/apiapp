import 'package:apiapp/controller/controller.dart';
import 'package:apiapp/models/product_models.dart';
import 'package:flutter/material.dart';

import 'models/api_model.dart';
import 'models/new_ap_model.dart';

class Test extends StatelessWidget {
  Test({super.key});

  APiget testAPi = APiget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: FutureBuilder<List<Autogenerated>>(
                future: testAPi.getAPi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  return ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var doc = snapshot.data![index];

                        return ElevatedButton(
                            onPressed: () {
                              testAPi.getAPi();
                            },
                            child: Text(doc.tableName.toString()));
                      });
                }),
          )
        ],
      ),
    );
  }
}
