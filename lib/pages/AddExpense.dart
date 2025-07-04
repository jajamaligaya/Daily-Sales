import 'package:flutter/material.dart';

class Addexpense extends StatefulWidget {
  const Addexpense({super.key});

  @override
  State<Addexpense> createState() => _AddexpenseState();
}
class _AddexpenseState extends State<Addexpense> {
  final _formKey = GlobalKey<FormState>();
  String _name ='';
  String _description ='';
  double _const =0.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[100],
        title: Text(
          'Expense Tracker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text('Add Expense', style: TextStyle(fontSize: 25),),
              const SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name:',
                  labelStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.lightBlueAccent[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(14)
                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Input your name';
                  }
                  return  null;
                }
              ),

              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description:',
                  labelStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.lightBlueAccent[500],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14)),
                ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Input your data';
                    }
                    return  null;
                  }
              ),

              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Cost:',
                  labelStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.lightBlueAccent[900],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Input your data';
                    }
                    return  null;
                  }
              ),


              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FilledButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print('The form is Validated');
                        }
                      },
                      child: Text ('Save'),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal[700],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
