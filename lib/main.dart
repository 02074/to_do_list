import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const TodoList(title: 'Flutter Demo Home Page'),
    );
  }
}

class TodoList extends StatelessWidget {
  const TodoList({ Key? key, required String title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text("My tasks", style: TextStyle(color: Colors.deepPurple),), 
        actions: const [Icon(Icons.filter_list, color: Colors.purple,), Icon(Icons.search)
        ],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1592388607848-4b1f15d93ff8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80")),
        )
      ),

      body: ListView(
        children: [
          Card(
            elevation: 45,
            child: ListTile(
              leading:  const Icon(Icons.check_circle,color:Colors.pink,),
              title: const Text("plan the trip to Finland",
              style: TextStyle(color: Colors.deepPurple),),
              subtitle: const Text("The family's trip to Finland next summer"),
              trailing: Row(
                
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.up,
                children:  [
                  Icon(Icons.notifications,
                  color: Colors.pink.shade100 ,),
                 Text("yesterday",
                 style: TextStyle(color: Colors.pink.shade100),)
                  
                ],
              ),
            ),
          )
        ],
      ) 

       
       
    
      
    );
  }
}
