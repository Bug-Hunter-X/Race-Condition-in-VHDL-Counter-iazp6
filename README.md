# Race Condition in VHDL Counter

This repository demonstrates a potential race condition in a simple VHDL counter and provides a solution.

## Bug Description

The provided VHDL code implements a counter that increments when an 'enable' signal is high. However, it lacks proper synchronization, resulting in a race condition if 'enable' changes simultaneously with the clock edge. This can lead to incorrect counter values.

## Solution

The solution employs a synchronizing flip-flop for the 'enable' signal before using it in the counter logic, thus preventing the race condition.  The counter value is only updated when the synchronized 'enable' is high.