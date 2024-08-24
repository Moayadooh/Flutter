import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() {
    return _FavoriteWidget();
  }
}

class _FavoriteWidget extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toggelFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount--;
      } else {
        _isFavorite = true;
        _favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _toggelFavorite,
          icon: (_isFavorite
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border)),
        ),
        Text('$_favoriteCount'),
      ],
    );
  }
}
