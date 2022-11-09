import 'package:flutter/material.dart';

class SelectionPages extends StatefulWidget {
  const SelectionPages({super.key});

  @override
  State<SelectionPages> createState() => _SelectionPagesState();
}

class _SelectionPagesState extends State<SelectionPages> {
 DateTime date = DateTime(2022,12,24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("datapicker"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Fecha de nacimiento",
                ),
               
              ),
              ElevatedButton(
                child: Text('Select Date'),
                onPressed: () async{
                  DateTime?newDate = await showDatePicker(context: context, 
                  initialDate: date, 
                  firstDate: DateTime(1900), 
                  lastDate: DateTime(2100),);
                  if(newDate == null) return;
                  setState(()=> date = newDate);
                },
              )

                
            ],
          ),
        ),
    );
  }
}