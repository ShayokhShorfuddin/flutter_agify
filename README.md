# flutter_agify

A Flutter package that grabs data from the Agify.io api that can predict your age using your name!

**NOTE:** I would like to make it clear that **I don't own the Agify.io api and the only purpose of this package is to make using Agify.io api easy.**

## API Website

Here is the official API Website of Agify.io -
https://agify.io/

## How To Use

`flutter_agify` offers 4 functions to grab information from  Agify.io API response. They are -

```dart
getAge() // For grabbing age data of 1 name. "name" parameter is required and "apiKey" parameter is optional.
```
```dart
getAges() // For grabbing age data of a list of names. "names" parameter is required and "apiKey" parameter is optional.
```
```dart
getAgeWithCountry() // For grabbing age data of 1 name but providing a country. "name" and "country" parameter is required and "apikey" parameter is optional.
```
```dart
getAgesWithCountry() // For grabbing age data of a list of names but providing a country. "names" and "country" parameter is required and "apikey" parameter is optional.
```


* **NOTE:** If you are about to use ```getAgeWithCountry()``` or ```getAgesWithCountry()```, keep in mind that the Agify.io api follows `ISO 3166-1 alpha-2` for country codes. See https://agify.io/our-data for a list of all supported countries. :]


# Code Example

Coming soon :]


## Usage

To use this package :

* add the dependency to your `pubspec.yaml` file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    flutter_agify:
```


# License
MIT License

Copyright (c) 2022 Shayokh Shuvro

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
