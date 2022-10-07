import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
import '../../componants/svgIcon.dart';
import '../cubit/layout_cubit.dart';

class MyFloatActionButton extends StatelessWidget {
  const MyFloatActionButton(this.cubit);
  final HomeLayoutCubit cubit;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      isExtended: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      onPressed: () {
        DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        );
      },
      child: SvgIcon(
        svg: 'Rectangle',
        size: 60,
      ),
    );
  }
}
