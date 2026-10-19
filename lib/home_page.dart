import 'package:flutter/material.dart';

import 'movie.dart';
import 'movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String query = '';
  bool isGrid = true;
  int discount = 20;

  void search(String value) {
    setState(() {
      query = value;
    });
  }

  void toggleView() {
    setState(() {
      isGrid = !isGrid;
    });
  }

  void decreaseDiscount() {
    setState(() {
      if (discount > 0) {
        discount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final q = query.toLowerCase().trim();

    final filtered = movies.where((movie) {
      return movie.title.toLowerCase().contains(q) ||
          movie.genre.toLowerCase().contains(q);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie Library',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: [
          IconButton(
            tooltip: isGrid ? 'List view' : 'Grid view',
            onPressed: toggleView,
            icon: Icon(isGrid ? Icons.view_list : Icons.grid_view),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: TextField(
              onChanged: search,
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFF761B49),
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: Color(0xFFD86A9D),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: Color(0xFFFFB6D5),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? const Center(
                    child: Text(
                      'No movies found',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : isGrid
                ? GridView.builder(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.48,
                        ),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        movie: filtered[index],
                        discount: discount,
                        onDiscountTap: decreaseDiscount,
                      );
                    },
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 320,
                        child: MovieCard(
                          movie: filtered[index],
                          discount: discount,
                          onDiscountTap: decreaseDiscount,
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
