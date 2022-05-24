# Floating Dartists Template

<p align="center">
  <a href="https://github.com/Floating-Dartists" target="_blank">
    <img src="https://raw.githubusercontent.com/Floating-Dartists/fd_template/main/assets/Transparent-light.png" alt="Floating Dartists" width="600">
  </a>
</p>

[![Test workflow](https://github.com/Floating-Dartists/fd_template/actions/workflows/tests.yml/badge.svg)](https://github.com/Floating-Dartists/fd_template/actions/workflows/tests.yml)
[![GitHub license](https://img.shields.io/github/license/Floating-Dartists/fd_template)](https://github.com/Floating-Dartists/fd_template/blob/main/LICENSE)

Boillerplate repository used to generate a Flutter project with a base folder structure and some packages.

After cloning it you should run the command `flutter create .` inside the folder to generate the different build folders.

## Specification

This template is using [Riverpod](https://riverpod.dev/) as its state management. It already has some implementations to manage the following features:

* Dynamic localization
* Dynamic themes (WIP)

## Dependencies

* [equatable](https://pub.dev/packages/equatable)
* [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
* [go_router](https://pub.dev/packages/go_router)

## Dev Dependencies

* [alchemist](https://pub.dev/packages/alchemist)
* [build_runner](https://pub.dev/packages/build_runner)
* [flutter_lints](https://pub.dev/packages/flutter_lints)
* [mocktail](https://pub.dev/packages/mocktail)
* [remove_from_coverage](https://pub.dev/packages/remove_from_coverage)
