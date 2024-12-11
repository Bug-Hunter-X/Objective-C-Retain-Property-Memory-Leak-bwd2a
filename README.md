# Objective-C Retain Property Memory Leak

This repository demonstrates a common memory leak in Objective-C related to the improper use of retain properties.  The `bug.m` file shows the problematic code, while `bugSolution.m` provides a corrected version.

## Problem

The issue arises when a property declared with `retain` or `copy` is assigned multiple times without releasing the previously assigned value. This leads to an inflated retain count, causing memory leaks if not properly managed.

## Solution

The solution involves properly managing the retain count by releasing the previous value before assigning a new one.  Using `nonatomic` properties along with ARC further streamlines this process.

## How to Reproduce

1. Clone this repository.
2. Compile and run `bug.m` (you will need an Objective-C development environment).
3. Observe the memory leak using memory profiling tools.
4. Compile and run `bugSolution.m` to see the corrected behavior.

## Contributing

Contributions are welcome!  Please open an issue or submit a pull request if you have any suggestions or improvements.