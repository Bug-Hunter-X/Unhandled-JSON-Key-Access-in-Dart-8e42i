# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart when working with JSON responses: accessing keys that may not exist.  Improper handling of this can lead to runtime exceptions.

The `bug.dart` file contains the buggy code. The `bugSolution.dart` file provides a solution incorporating more robust error handling.

## Problem

The original code attempts to access the `nonExistentKey` in the JSON response.  If this key is missing, a runtime error occurs.  The existing `try-catch` block is insufficient because it doesn't catch this specific error.

## Solution

The solution uses null-aware operators (`?.`) and default values to safely access keys.  It also enhances error handling to account for more potential issues during JSON decoding.