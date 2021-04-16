# flutter_text_field_fab

A simple Flutter widget that makes turning a FAB into a text field easy.

[![pub.dev](https://img.shields.io/pub/v/flutter_text_field_fab?include_prereleases)](https://pub.dev/packages/flutter_text_field_fab)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  

## Installation

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_text_field_fab: <last-version>
```

## Features

* Simple sliding animation
* `onChange()`, `onSubmit` and `onClear()`
* Custom coloring

## Example
<img src="https://raw.githubusercontent.com/haefele-software/flutter_text_field_fab/main/assets/flutter_text_field_fab.gif">

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
                onChange: (String query) => filterList(query),
                onClear: () => clearList(),
            ),
            body: ...);
    }
}
```
