# Experiment 1: Convexity Check of a Function

**Date:** 31/08/2026

## Aim
To check whether a given function is convex or not.

## Theory
A function $f(x)$ is said to be convex over an interval if, for any two points $x_1$ and $x_2$ in the interval and any $\lambda \in [0, 1]$, it satisfies:

$$f(\lambda x_1 + (1 - \lambda)x_2) \le \lambda f(x_1) + (1 - \lambda)f(x_2)$$

If this inequality is satisfied for all points in the interval, the function is convex. Otherwise, it is non-convex.

In the program ([`exp1.m`](./exp1.m)), the defining inequality is tested numerically on 20,000 random pairs of points in the interval with a random value of $\lambda$. If it fails even once (beyond a tolerance of $10^{-9}$), the function is reported as not convex.

## Output
See [`output.txt`](./output.txt):

```text
>> exp1
Enter function: x^3 + 5*x^2 - 2*x - 6
Enter interval [a b]: [1 2]
Function is convex.
>> exp1
Enter function: -x^2-4*x
Enter interval [a b]: [-1 90]
Function is not convex.
>> exp1
Enter function: x^4 - x^2
Enter interval [a b]: [-1 1]
Function is not convex.
>>
```
