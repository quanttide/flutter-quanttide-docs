import 'package:flutter/material.dart';
import 'package:flutter_quanttide_docs/flutter_quanttide_docs.dart';


class BookListScreen extends StatelessWidget {
  final List<Book> books;

  const BookListScreen({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('文档列表'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: books.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500, // 每个网格项的最大宽度
          mainAxisSpacing: 8.0, // 主轴（垂直）方向的间距
          crossAxisSpacing: 8.0, // 交叉轴（水平）方向的间距
          childAspectRatio: 2, // 子项宽高比
        ),
        itemBuilder: (BuildContext context, int index) {
          return BookCard(
            title: books[index].title,
            description: books[index].description,
          );
        },
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String description;

  const BookCard({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '$description',
              style: const TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
