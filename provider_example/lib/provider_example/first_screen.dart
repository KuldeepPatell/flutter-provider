import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/item_provider.dart';
import 'package:provider_example/provider_example/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var fav = context.watch<ItemProvider>().favList;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondScreen()));
      }),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Tottal ${fav.length} items"),
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext, int index) {
            return ListTile(
              title: Text("Item $index"),
              trailing: GestureDetector(
                onTap: () {
                  if (!fav.contains(index)) {
                    context.read<ItemProvider>().addToList(index);
                  } else {
                    context.read<ItemProvider>().removeFav(index);
                  }
                },
                child: Icon(Icons.favorite,
                    color: fav.contains(index) ? Colors.red : Colors.grey),
              ),
            );
          }),
    );
  }
}
