import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return(
    Container(
      height: 20,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red),
    )
    );
  }
}
