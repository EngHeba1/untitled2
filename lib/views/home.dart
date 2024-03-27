import 'package:flutter/material.dart';

import '../widgets/note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder:(context, index) => NoteItem(),
    separatorBuilder: (context, index) => const SizedBox(height: 10,),
    itemCount: 10 ,);
  }
}

