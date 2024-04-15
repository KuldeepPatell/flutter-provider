import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider_example/app_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* 1st way to initiate provider */
    // AppState value = Provider.of<AppState>(context);
    return Scaffold(
      body: Center(
        /*For 1st way */
        // child: Text(
        //   "value = ${value.temp}",
        //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        // ),

        /*For 2nd way */
        // child: Consumer<AppState>(
        //   builder: (context, value, child) {
        //     return Text(
        //       "value = ${value.temp}",
        //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //     );
        //   },
        // ),

        child: Consumer<AppState>(
          builder: (context, value, child) {
            return Column(
              children: [
                Text(
                  "Second : ${value.start}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      value.getTimer();
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
