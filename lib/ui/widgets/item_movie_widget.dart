import 'package:flutter/material.dart';
import 'package:tf10p_0028_codigo_movieapp/models/movie_model.dart';
import 'package:tf10p_0028_codigo_movieapp/ui/general/colors.dart';

class ItemMovieWidget extends StatelessWidget {
  MovieModel movieModel;

  ItemMovieWidget({
    required this.movieModel,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.65,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://image.tmdb.org/t/p/w500${movieModel.posterPath}",
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kBrandPrimaryColor.withOpacity(0.85),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieModel.originalTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 100,
                    height: 3.2,
                    decoration: BoxDecoration(
                      color: kBrandSecondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    movieModel.overview,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            movieModel.releaseDate.toString().substring(0,10),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            movieModel.voteCount.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff23232d).withOpacity(0.85),
              ),
              child: Text(
                movieModel.voteAverage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
