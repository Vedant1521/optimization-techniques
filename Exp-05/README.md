# Experiment 5: KKT Conditions Derivation

**Date:** 05/10/2026

## Aim
Program to derive the KKT conditions for a given optimization problem.

## Theory
The **Karush-Kuhn-Tucker (KKT)** conditions are used to solve constrained nonlinear optimization problems. They are an extension of the Lagrange multiplier method and are applicable to problems with both equality and inequality constraints.

Consider the optimization problem:

$$\text{Minimize } f(x, y)$$

Subject to:

$$g_1(x, y) \le 0, \quad g_2(x, y) \le 0$$

The Lagrangian function is:

$$L = f(x, y) + \lambda_1 g_1(x, y) + \lambda_2 g_2(x, y)$$

The four KKT conditions are:
1. **Stationarity:** $\nabla f + \lambda_1 \nabla g_1 + \lambda_2 \nabla g_2 = 0$
2. **Primal feasibility:** $g_1(x, y) \le 0,\; g_2(x, y) \le 0$
3. **Dual feasibility:** $\lambda_1, \lambda_2 \ge 0$
4. **Complementary slackness:** $\lambda_1 g_1(x, y) = 0,\; \lambda_2 g_2(x, y) = 0$

In [`exp5.m`](./exp5.m), the KKT linear system $AX = B$ is constructed for a quadratic programming problem specified by $D$, $l$, constraint matrix `Mat`, RHS vector $b$, and constraint sense vector `inq`.

## Output
See [`output.txt`](./output.txt):

```text
Enter D matrix: [ 1 0; 0 1]
Enter l vector: [0 ; 0]
Enter b vector: [4]
Enter constraint matrix: [1 1]
Enter inq vector: 0
Enter 1 for minimization, 0 for maximization: 0
Matrix A
    -2     0     0     1    -1     0     0     0
     0    -2     0     1     0    -1     0     0
     0     0     0    -1     0     0    -1     0
     1     1    -1     0     0     0     0     1

Matrix B
     0
     0
     0
     4

>>>

Enter D matrix: [7 5;2 -1]
Enter l vector: [3; 9]
Enter b vector: [-2 ; 4]
Enter constraint matrix: [1 2;4 7]
Enter inq vector: [2 3]
Enter 1 for minimization, 0 for maximization: 1
Matrix A
    14    10    -1    -4    -1     0     0     0
     4    -2    -2    -7     0    -1     0     0
    -1    -2     0     0     0     0     1     0
    -4    -7     0     0     0     0     0     1

Matrix B
    -3
    -9
     2
    -4
```
