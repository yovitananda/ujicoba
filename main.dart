// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:async';
// // import 'dart:convert';

// // void main() => runApp(MyApp());

// // Future<List<Post>> fetchPosts() async {
// //   final response =
// //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
// //   if (response.statusCode == 200) {
// //     List<dynamic> body = json.decode(response.body);
// //     List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();
// //     return posts;
// //   } else {
// //     throw Exception('Failed to load posts');
// //   }
// // }

// // class Post {
// //   final int userId;
// //   final int id;
// //   final String title;
// //   final String body;

// //   Post(
// //       {required this.userId,
// //       required this.id,
// //       required this.title,
// //       required this.body});

// //   factory Post.fromJson(Map<String, dynamic> json) {
// //     return Post(
// //       userId: json['userId'] ?? 0,
// //       id: json['id'] ?? 0,
// //       title: json['title'] ?? '',
// //       body: json['body'] ?? '',
// //     );
// //   }
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   final Future<List<Post>> posts = fetchPosts();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Get API'),
// //       ),
// //       body: Center(
// //         child: FutureBuilder<List<Post>>(
// //           future: posts,
// //           builder: (context, snapshot) {
// //             if (snapshot.connectionState == ConnectionState.waiting) {
// //               return CircularProgressIndicator();
// //             } else if (snapshot.hasError) {
// //               return Text('Error: ${snapshot.error}');
// //             } else {
// //               return ListView.builder(
// //                 itemCount: snapshot.data!.length,
// //                 itemBuilder: (context, index) {
// //                   return ListTile(
// //                     title: Text(snapshot.data![index].title),
// //                     subtitle: Text(snapshot.data![index].body),
// //                   );
// //                 },
// //               );
// //             }
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
//

//main 2

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// void main() => runApp(MyApp());

// Future<List<Post>> fetchPosts() async {
//   final response =
//       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//   if (response.statusCode == 200) {
//     List<dynamic> body = json.decode(response.body);
//     List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();
//     return posts;
//   } else {
//     throw Exception('Failed to load posts');
//   }
// }

// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   Post(
//       {required this.userId,
//       required this.id,
//       required this.title,
//       required this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'] ?? 0,
//       id: json['id'] ?? 0,
//       title: json['title'] ?? '',
//       body: json['body'] ?? '',
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final Future<List<Post>> posts = fetchPosts();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Posts from API'),
//       ),
//       body: Center(
//         child: FutureBuilder<List<Post>>(
//           future: posts,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     elevation: 5, // Tambahkan elevasi untuk efek bayangan
//                     margin: EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 5), // Tambahkan margin
//                     child: ListTile(
//                       title: Text(snapshot.data![index].title),
//                       subtitle: Text(snapshot.data![index].body),
//                       // Tambahkan animasi ketika item di-tap
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 DetailScreen(post: snapshot.data![index]),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   final Post post;

//   DetailScreen({required this.post});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(post.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'User ID: ${post.userId}',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text('ID: ${post.id}',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             Text('Body:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             Text(post.body),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FORM",
      home: GetDataTodos(),
    );
  }
}

Future<List<Todo>> fetchTodos() async {
  final response = await http
      .get(Uri.parse('https://calm-plum-jaguar-tutu.cyclic.app/todos'));
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    if (data.containsKey('data')) {
      List<dynamic> todosData = data['data'];
      List<Todo> todos = todosData
          .map((item) => Todo.fromJson(item as Map<String, dynamic>))
          .toList();
      return todos;
    }
  }
  throw Exception('Failed to load Todos');
}

class Todo {
  final String todoName;
  final bool isComplete;

  Todo({
    required this.todoName,
    required this.isComplete,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      todoName: json['todoName'] ?? '',
      isComplete: json['isComplete'] ?? false,
    );
  }
}

class GetDataTodos extends StatelessWidget {
  final Future<List<Todo>> Todos = fetchTodos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos from API'),
      ),
      body: Center(
        child: FutureBuilder<List<Todo>>(
          future: Todos,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TodoDetailPage(todo: snapshot.data![index]),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5, // Add elevation for the shadow
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index].todoName,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                            ),
                            Text(
                              'Is Complete: ${snapshot.data![index].isComplete}',
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Text('No data available.');
            }
          },
        ),
      ),
    );
  }
}

class TodoDetailPage extends StatelessWidget {
  final Todo todo;

  TodoDetailPage({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              todo.todoName,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 23,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Is Complete: ${todo.isComplete}',
            ),
          ),
        ],
      ),
    );
  }
}
