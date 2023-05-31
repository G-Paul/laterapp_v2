import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  int index;
  Function ontap;
  CustomListTile({super.key, required this.index, required this.ontap});

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
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      height: _cardHeight.toDouble(),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
        // add 2 px border on all sides
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          InkWell(
            focusColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            highlightColor: Colors.red,
            onTap: () => widget.ontap(widget.index),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(Icons.ac_unit),
                ),
                Text('Card ${widget.index}'),
                const Spacer(
                  flex: 2,
                ),
                IconButton(
                    onPressed: _changeContainerSize,
                    icon: (_isExpanded)
                        ? Icon(Icons.expand_less)
                        : Icon(Icons.expand_more)),
              ],
            ),
          ),
          (_isExpanded)
              ? Container(
                  // height: 200,
                  color: Colors.red,
                )
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
