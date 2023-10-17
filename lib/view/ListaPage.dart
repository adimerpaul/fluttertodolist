import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<String> todos = [];
  TextEditingController _todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _todoController,
              autofocus: true,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                todos.add(_todoController.text);
                _todoController.text = '';
              });
            },
            child: const Text('Adicionar'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          todos.removeAt(index);
                        });
                      },
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
