# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

## Summary

## Lab Questions

### In plain English describe the function and use of a multiplexer.

##### *A multiplexer takes multiple (some number 2^n) inputs and selects only one of them as an output, selected by a separate input of n number inputs. This allows for one device to switch between any number of inputs, as opposed to simpler devices, such as relays or transistors, which can only switch between two possible inputs.*

### In plain English describe the function and use of a demultiplexer.

##### *A demultiplexer is simply a multiplexer in reverse- It takes one input and can connect that to any one of 2^n outputs, again, governed by a separate input(s) of n number(s). This is very much like a switchboard, but a digital signal causes the lines to change, as opposed to physically moving wires, making or breaking physical connections.*

### What other uses might these circuits have? (Think Shannon’s)

##### *Multiplexers can be used to expand any Boolean function, that is, you can apply an input variable of a Boolean function to a multiplexers select line. Then, a simpler function is left, one where the chosen variable is 1, and one where it is 0. The other variable is then fed into the multiplexer. This can be stacked for any number of variables, to simplify any Boolean function down to a series of multiplexers.* 

##### *Beyond Boolean functions, multiplexers are used to quickly allow switching across digital states without bulky rotary switches- A computer can be directed into a certain mode of operation by simply changing which output is selected on a  demultiplexer.*

