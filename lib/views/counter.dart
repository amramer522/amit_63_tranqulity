import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int count = 0;
  // int count = CacheHelper.prefs.getInt("count")??0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: ()async {
                count++;
                // await CacheHelper.prefs.setInt("count", count);
                setState(() {

                });
              },
              icon: Icon(Icons.add),
            ),
            SizedBox(width: 16,),
            Text("$count",style: TextStyle(fontSize: 50),),
            SizedBox(width: 16,),
            IconButton(
              onPressed: () async{
                count--;
                // await CacheHelper.prefs.setInt("count", count);
                setState(() {

                });
              },
              icon: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
