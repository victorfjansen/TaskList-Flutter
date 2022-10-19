import 'package:flutter/material.dart';

import '../components/TaskCard.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;
  static const String imagem =
      "https://images.unsplash.com/photo-1518644730709-0835105d9daa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: const SizedBox(),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: ListView(
          children: const [
            TaskCard(
              nameOfTask: 'task2',
              imageUrl: imagem,
              dificuldade: 3,
            ),
            TaskCard(
              nameOfTask: 'task2',
              imageUrl: imagem,
              dificuldade: 2,
            ),
            TaskCard(
              nameOfTask: 'task2',
              imageUrl: imagem,
              dificuldade: 5,
            ),
            TaskCard(
              nameOfTask: 'task2',
              imageUrl: imagem,
              dificuldade: 1,
            ),
            TaskCard(
              nameOfTask: 'task2',
              imageUrl: imagem,
              dificuldade: 4,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => opacity = !opacity),
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
