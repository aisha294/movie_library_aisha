class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  Movie(
    title: 'Mission: Impossible – The Final Reckoning',
    genre: 'Action / Adventure / Thriller',
    year: 2025,
    rating: 7.2,
    image: 'assets/posters/mission_impossible.jpg',
  ),
  Movie(
    title: 'Companion',
    genre: 'Sci-Fi / Thriller / Horror',
    year: 2025,
    rating: 6.9,
    image: 'assets/posters/commpanion.jpg',
  ),
  Movie(
    title: 'Heart of Stone',
    genre: 'Action / Spy Thriller',
    year: 2023,
    rating: 5.7,
    image: 'assets/posters/heart_of_stone.jpg',
  ),
  Movie(
    title: 'Lifehack',
    genre: 'Thriller / Crime',
    year: 2026,
    rating: 7.0,
    image: 'assets/posters/lifehack.jpg',
  ),
  Movie(
    title: 'Inception',
    genre: 'Sci-Fi / Action',
    year: 2010,
    rating: 8.8,
    image: 'assets/posters/inception.jpg',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action / Crime / Drama',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/dark_kinght.jpg',
  ),
  Movie(
    title: 'Spider-Man: No Way Home',
    genre: 'Action / Adventure / Fantasy',
    year: 2021,
    rating: 8.1,
    image: 'assets/posters/spiderman_no_way_home.jpg',
  ),

  Movie(
    title: 'M3GAN 2.0',
    genre: 'Sci-Fi / Action / Horror / Thriller',
    year: 2025,
    rating: 6.0,
    image: 'assets/posters/M3GAN_2_0.jpg',
  ),
];
