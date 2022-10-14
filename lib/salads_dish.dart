import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Saladish extends StatelessWidget {
  const Saladish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        isThreeLine: true,
                        title: const Text('Spanish Salad'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('SAR 7.96'),
                            SizedBox(height: 10),
                            const Text(
                                'French spanish,mushroom and hard boiled egg'),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5)),
                                  height: 40,
                                  width: 50,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5)),
                                  height: 40,
                                  width: 50,
                                  child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10)
                          ],
                        ),
                        leading: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.radio_button_on,
                              color: Colors.green,
                            )),
                        trailing: Column(
                          children: [
                            const Text('\$15'),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/photo-1611601184963-9d1de9b79ff3.jfif'))),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
