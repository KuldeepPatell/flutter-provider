import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/item_provider.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var fav = context.watch<ItemProvider>().favList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite ${fav.length} items"),
      ),
      body: ListView.builder(
          itemCount: fav.length,
          itemBuilder: (BuildContext, int index) {
            return ListTile(
                title: Text("Item ${fav[index]}"),
                trailing: TextButton(
                    onPressed: () {
                      context.read<ItemProvider>().removeFav(fav[index]);
                    },
                    child: Text(
                      "Remove",
                      style: TextStyle(color: Colors.red),
                    )));
          }),
    );
  }
}
