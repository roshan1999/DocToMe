import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:home_page_1/home_page_content.dart' as homePage;

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget();
  @override
  SearchBarWidgetState createState() => SearchBarWidgetState();
}

class SearchBarWidgetState extends State<StatefulWidget> {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: SearchBar<Post>(
        onSearch: search,
        onItemFound: (Post post, int index) {
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.description),
          );
        },
        loader: Center(
          child: CircularProgressIndicator(),
        ),
        placeHolder: Center(
          child: homePage.HomePageContent(),
        ),
        onError: (error) {
          return Center(
            child: Text("Error occurred : $error"),
          );
        },
        // emptyWidget: Center(
        //   child: Text("Empty"),
        // ),
      ),
    );
  }
}
