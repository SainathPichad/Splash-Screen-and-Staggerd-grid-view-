import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        child: StaggeredGridView.countBuilder(crossAxisCount: 6,
            itemBuilder: (BuildContext context,int index)=>Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/500/500?random=$index'),
                  fit: BoxFit.fill,
                ),
                    shape: BoxShape.rectangle
              ),
            ),




















            staggeredTileBuilder:   (int index) =>
          new StaggeredTile.count(2, index.isEven ? 3 : 2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,












        ),
      )
    );
  }
}
