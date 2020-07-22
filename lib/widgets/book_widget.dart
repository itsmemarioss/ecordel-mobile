import 'package:flutter/rendering.dart';

import '../models/ecordel.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../screens/read_screen.dart';

class BookWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ecordel cordel = Provider.of<Ecordel>(context, listen: false);

    return Container(
      decoration: BoxDecoration(),
      // width: 175,
      // height: 375,
      // height: 400,

      child: Column(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              splashColor: Theme.of(context).primaryColor,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReadScreen(
                              cordelId: cordel.id,
                            )));
              },
              child: Card(
                color: Colors.transparent,
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    cordel.xilogravura,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
