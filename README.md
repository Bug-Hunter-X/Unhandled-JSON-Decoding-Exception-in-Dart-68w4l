# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving network requests and JSON parsing. The `bug.dart` file showcases code that fails to handle potential `FormatException` exceptions that can occur during JSON decoding using `jsonDecode`. The `bugSolution.dart` file provides a corrected version with improved error handling.

## Problem

The original code attempts to decode JSON data from a network response. However, it lacks proper error handling for scenarios where the response body isn't valid JSON, leading to a `FormatException` and application crashes.  The error message isn't very informative.

## Solution

The solution incorporates a `try-catch` block to specifically handle `FormatException`. This allows the application to gracefully recover from invalid JSON, logging informative error messages for debugging purposes.  More robust error handling might involve retrying the request or displaying user-friendly messages.