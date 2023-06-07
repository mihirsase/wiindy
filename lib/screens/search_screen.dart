import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Card(
                      elevation: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for cities",
                            prefixIcon: Icon(Icons.search,color: Colors.black,)
                          ),
                          cursorWidth: 1,
                          cursorColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      elevation: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text("Go")
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
