import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatefulWidget {
  final int index;
  final String title;
  final String url;
  final Function ontap;
  CustomListTile(
      {super.key,
      required this.index,
      required this.title,
      required this.url,
      required this.ontap});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool _isExpanded = false;
  int _cardHeight = 80;
  void _changeContainerSize() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _cardHeight = 200;
      } else {
        _cardHeight = 80;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: _cardHeight.toDouble(),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
        // add 2 px border on all sides
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(Icons.ac_unit),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.title}',
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                // Text(
                //   '${widget.url}',
                //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
                //         color: Theme.of(context)
                //             .textTheme
                //             .bodySmall!
                //             .color!
                //             .withOpacity(0.2),
                //       ),
                //   overflow: TextOverflow.ellipsis,
                //   maxLines: 1,
                // ),
              ],
            ),
          ),
          // const Spacer(
          //   flex: 2,
          // ),
          IconButton(
            onPressed: () => widget.ontap(widget.index),
            icon: FaIcon(
              FontAwesomeIcons.penToSquare,
              color: Theme.of(context).colorScheme.tertiary,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
