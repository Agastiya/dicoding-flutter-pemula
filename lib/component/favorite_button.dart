import 'package:flutter/material.dart';
import 'package:submission/const/colors.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 22,
      icon: Icon(
        isFavorite ? Icons.turned_in : Icons.turned_in_not,
        color: isFavorite ? primaryOrange : white,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
          if (isFavorite) {
            final snackBar = SnackBar(
              content: const Text('Add to your favorite'),
              action: SnackBarAction(
                label: 'Close',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        });
      },
    );
  }
}
