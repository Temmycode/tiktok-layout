import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok/utils/components/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        // setting the system ui for this particular page
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              // the search bar
              SearchBar(
                controller: searchController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
