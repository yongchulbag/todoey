import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:todoey/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

// 잘 작동하다가 Provider 적용후 여러가지 에러가 뜨는데 검색해봐도 알수가 없다 아무도 관심이 없는 이슈인듯
// Provider를 소듕히 여기는 사람이 없어서 그러려니 하고 포기한다, 쓸일도 없을거 같다