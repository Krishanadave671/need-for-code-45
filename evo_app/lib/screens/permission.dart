import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class permission extends StatefulWidget {
  const permission({Key? key}) : super(key: key);

  @override
  State<permission> createState() => _permissionState();
}

class _permissionState extends State<permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 8,top: 8,bottom: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Ask for Permission",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20,),

                TextFormField(
                  initialValue: 'Enter name here',
                  decoration: InputDecoration(
                    labelText: 'Event Name',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20,),


                TextFormField(
                  initialValue: 'Enter subject here',
                  decoration: InputDecoration(
                    labelText: 'Subject ',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20,),


                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Discription',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20,),

                TextFormField(
                  //initialValue: DateFormat.yMd().format(),
                  decoration: InputDecoration(
                    labelText: 'Event start',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today,),
                  ),
                ),

                SizedBox(height: 20,),

                TextFormField(
                  //initialValue: DateFormat.yMd().format(),
                  decoration: InputDecoration(
                    labelText: 'Event end',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today,),
                  ),
                ),

                SizedBox(height: 20,),

                    TextFormField(
                      //initialValue: DateFormat.yMd().format(),
                      decoration: InputDecoration(
                        labelText: 'Start time',
                        //errorText: 'Error message',
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.timelapse,),
                      ),
                    ),
                    TextFormField(
                      //initialValue: DateFormat.yMd().format(),
                      decoration: InputDecoration(
                        labelText: 'End time',
                        //errorText: 'Error message',
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.timelapse,),
                      ),
                    ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text("Apply",
                      style: TextStyle(
                        fontSize: 16,
                      ),),),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
