import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'catalog.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final list = context.watch<Catalog>().list;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider Demo"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return list[index].value
              ? ListTile(
                  title: Text(list[index].label),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<Catalog>().selectItem(index);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
