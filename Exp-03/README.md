# Experiment 3: Convex Programming Problem Check

**Date:** 28/09/2026

## Aim
Program to check whether the given optimization problem (NLP) is a convex programming problem or not.

## Theory
A Nonlinear Programming (NLP) problem is called a **convex programming problem** if it satisfies the following conditions:
1. The objective function must be convex for a minimization problem.
2. All inequality constraints must be convex functions in the form $g_i(x) \le 0$.
3. Equality constraints must be affine (linear plus a constant).
4. The feasible region must be convex.

For a maximization problem, the objective function must be concave.

The Hessian matrix is used to check the convexity or concavity of the objective and constraint functions ([`exp3.m`](./exp3.m)).

## Output
See [`output.txt`](./output.txt):

```text
Enter objective function: x^2 + y^2
Enter inequality constraint: x+y-4
Enter lower limit: -2
Enter upper limit: 2
Objective Hessian:
[2, 0]
[0, 2]

Constraint Hessian:
[0, 0]
[0, 0]

It is a convex programming problem

Enter objective function: x^2 + 2*x - y^2 - 3*x*y
Enter inequality constraint: x-y+5
Enter lower limit: 0
Enter upper limit: 10
Objective Hessian:
[ 2, -3]
[-3, -2]

Constraint Hessian:
[0, 0]
[0, 0]

It is not a convex programming problem
```
