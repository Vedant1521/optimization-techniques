# Experiment 6: Quadratic Programming by Wolfe Method

**Date:** 12/10/2026

## Aim
Program to solve the quadratic programming problem by Wolfe method.

## Theory
The **Wolfe method** is used to solve quadratic programming problems subject to linear constraints. It uses the KKT conditions to convert the quadratic programming problem into a system of equations.

The main steps are:
1. Form the Lagrangian function.
2. Derive the stationarity conditions.
3. Apply complementary slackness.
4. Construct the initial tableau.
5. Use the simplex method to obtain the optimal solution.

The quadratic programming problem is represented as:

$$\min Z = \frac{1}{2} x^T H x + f^T x$$

Subject to:

$$A x \le b, \quad x \ge lb$$

Implementation in [`exp6.m`](./exp6.m) solves this quadratic program using MATLAB's `quadprog`.

## Output
See [`output.txt`](./output.txt):

```text
Enter H matrix: [1 -1; -1 2]
Enter f vector: [-4 ; -5]
Enter A matrix: [1 1; -1 2; 2 1]
Enter b vector: [4 ; -3; 6]
Enter lower bound: [0 ; 0]

Minimum found that satisfies the constraints.

Optimization completed because the objective function is non-decreasing in
feasible directions, to within the value of the optimality tolerance,
and constraints are satisfied to within the value of the constraint tolerance.

<stopping criteria details>
Optimal solution
    3.0000
    0.0000

Minimum value
   -7.5000

>>>>

Enter H matrix: [1 6; 6 1]
Enter f vector: [-3 ;-2]
Enter A matrix: [ 2 1; 1 1; -2 -1]
Enter b vector: [1 ; 3; -2]
Enter lower bound: [1 ; 1]

The problem is infeasible.

During presolve, quadprog found the constraints to be inconsistent
to within the constraint tolerance.
```
