# Experiment 4: Lagrange Multiplier Method

**Date:** 05/10/2026

## Aim
Program to solve a given optimization problem using Lagrange method.

## Theory
The **Lagrange Multiplier Method** is used to solve constrained optimization problems. It helps us find the maximum or minimum value of an objective function subject to a given equality constraint.

Consider the optimization problem:

$$\text{Minimize / Maximize } f(x, y)$$

Subject to:

$$g(x, y) = 0$$

The Lagrangian function is:

$$L(x, y, \lambda) = f(x, y) + \lambda g(x, y)$$

The necessary conditions are:

$$\frac{\partial L}{\partial x} = 0, \quad \frac{\partial L}{\partial y} = 0, \quad \frac{\partial L}{\partial \lambda} = 0$$

Solving these equations gives the candidate optimal solution ([`exp4.m`](./exp4.m)).

## Output
See [`output.txt`](./output.txt):

```text
>>>> exp4

Enter objective function: x^2 + 2*x - y^2 - 3*x*y
Enter constraint: 2*x + 4*y - 8
Optimal solution is
[4/9, 16/9]

Optimal value is
-40/9

>>>> exp4

Enter objective function: 7*x^2 + 4*y^2 - 3*x*y
Enter constraint: 4*y + 3*x - 5
Optimal solution is
[45/92, 325/368]

Optimal value is
2575/736
```
