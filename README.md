# Dart Runtime Error: Accessing Non-Existent JSON Key

This repository demonstrates a common runtime error in Dart applications that involves accessing a non-existent key within a JSON response. The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides a corrected version.

## Problem

The `fetchData` function in `bug.dart` fetches JSON data from a sample API endpoint. However, it attempts to access the `nonExistentKey` without checking if the key exists. If the key is missing, this results in a runtime error, specifically a `NoSuchMethodError`.

## Solution

The `bugSolution.dart` file demonstrates how to safely access JSON data by checking the existence of keys before accessing them using the `containsKey` method,  or using a safer method like `jsonDecode` with an alternative approach to handle missing keys.

This example highlights the importance of robust error handling and input validation when working with JSON data in Dart.