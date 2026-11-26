# Experiment 9: Penalty Method for NLPP

**Date:** 02/11/2026

## Aim
Program to solve a given NLPP using Penalty method.

## Theory
The **Penalty Method** is an optimization technique used to solve constrained nonlinear programming problems by converting them into unconstrained optimization problems. The basic idea is to add a penalty term to the objective function whenever the constraints are violated.

For a minimization problem:

$$\min f(x) \quad \text{subject to} \quad g_i(x) \le 0$$

The penalty function can be written as:

$$P(x, r) = f(x) + r \sum_{i=1}^{m} \max(0, g_i(x))^2$$

where:
- $f(x)$ = Original objective function
- $g_i(x)$ = Constraint functions
- $r$ = Penalty parameter (increased iteratively by a factor of 10 in [`exp9.m`](./exp9.m))

## Output
See [`output.txt`](./output.txt):

```text
Enter objective function: x^2+y^2
Enter constraint function: 4-x-y
Enter initial point: [1 1]
Optimal solution
    2.0015
    1.9985

Minimum value = 8.0000
>>

>> exp9
Enter objective function: (x-3)^2 + (y-2)^2
Enter constraint function: x+y-2
Enter initial point: [0 0]
Optimal solution
    1.5000
    0.5000

Minimum value = 4.5000
>>
```
