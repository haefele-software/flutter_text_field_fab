# flutter_text_field_fab

A simple Flutter widget that makes turning a FAB into a text field easy.

[![pub.dev](https://img.shields.io/pub/v/flutter_text_field_fab?include_prereleases)](https://pub.dev/packages/flutter_text_field_fab)

## Installation

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_text_field_fab: <last-version>
```

## Simple Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_text_field_fab/flutter_text_field_fab.dart';

class SomeListView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            floatingActionButton: TextFieldFloatingActionButton(
                'Search...',
                onChange: (String query) => model.filterList(query),
                onClear: () => model.clearList(''),
            ),
            body: Center('Why hello there'));
    }
}
```
