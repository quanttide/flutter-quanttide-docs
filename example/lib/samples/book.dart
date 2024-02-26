import 'package:flutter_quanttide_docs/flutter_quanttide_docs.dart';

List<Map<String, dynamic>> booksData = [
  {
    "id": "1",
    "name": "Book 1",
    "title": "Document 1",
    "description": "Description 1"
  },
  {
    "id": "2",
    "name": "Book 2",
    "title": "Document 2",
    "description": "Description 2"
  },
  {
    "id": "3",
    "name": "Book 3",
    "title": "Document 3",
    "description": "Description 3"
  },
  {
    "id": "4",
    "name": "Book 4",
    "title": "Document 4",
    "description": "Description 4"
  },
  {
    "id": "5",
    "name": "Book 5",
    "title": "Document 5",
    "description": "Description 5"
  },
  {
    "id": "6",
    "name": "Book 6",
    "title": "Document 6",
    "description": "Description 6"
  },
  {
    "id": "7",
    "name": "Book 7",
    "title": "Document 7",
    "description": "Description 7"
  },
  {
    "id": "8",
    "name": "Book 8",
    "title": "Document 8",
    "description": "Description 8"
  },
  {
    "id": "9",
    "name": "Book 9",
    "title": "Document 9",
    "description": "Description 9"
  },
  {
    "id": "10",
    "name": "Book 10",
    "title": "Document 10",
    "description": "Description 10"
  },
];

final List<Book> books = booksData.map((data) => Book.fromJson(data)).toList();
