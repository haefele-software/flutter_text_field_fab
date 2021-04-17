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

* Simple slide animation
* Custom icon
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

## Documentation

| Parameters         | Value                  | Required  | Docs                                                                        |
| ------------------ |----------------------- | :-------: | --------------------------------------------------------------------------- |
| `label`            | `String`               |    Yes    | Label to be the placeholder for the `TextField`
| `icon`             | `Icon`                 |    Yes    | Icon for the FAB |
| `backgroundColor`  | `Color`                |    No     | The background color of the FAB (defaults to white)                         |
| `iconColor`        | `Color`                |    No     | The color of the of the icon (defaults to black)                            |
| `onChange`         | `Function`             |    No     | `onChange` handler on keystroke input                                       |
| `onSubmit`         | `Function`             |    No     | `onSubmit` handler input submission                                         |
| `onClear`          | `Function`             |    No     | `onClear` handler for when the input is closed                              |
