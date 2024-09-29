import 'package:flutter/material.dart';

enum Filter { humus, alluvial, volcanic }

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilter});

  final Map<Filter, bool> currentFilter;

  @override
  State<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _humusFilterSet = false;
  var _alluvialFilterSet = false;
  var _volcanicFilterSet = false;

  @override
  void initState() {
    super.initState();
    _humusFilterSet = widget.currentFilter[Filter.humus]!;
    _alluvialFilterSet = widget.currentFilter[Filter.alluvial]!;
    _volcanicFilterSet = widget.currentFilter[Filter.volcanic]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool dipPop, dynamic result) {
          if (dipPop) return;
          Navigator.of(context).pop({
            Filter.humus: _humusFilterSet,
            Filter.alluvial: _alluvialFilterSet,
            Filter.volcanic: _volcanicFilterSet
          });
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _humusFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _humusFilterSet = isChecked;
                });
              },
              title: Text(
                "Humus",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                "Only include humus soil plants",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _alluvialFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _alluvialFilterSet = isChecked;
                });
              },
              title: Text(
                "Alluvial",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                "Only include aluvial soil plants",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _volcanicFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _volcanicFilterSet = isChecked;
                });
              },
              title: Text(
                "Volcaninc",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                "Only include volcanic soil plants",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
