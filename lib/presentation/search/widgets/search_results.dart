import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';

import 'package:netflix/core/constands.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/titles.dart';

class SearchResultWidgets extends StatelessWidget {
  const SearchResultWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movie & TV'),
        khigth,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                20,
                (index) {
                  final movie = state.searchResultList[index];
                  return MainCard(
                    imageUrl: '$imageAppendurl${movie.posterPath}',
                  );
                },
              ),
            );
          },
        )),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
