# Experiment 7: Frank-Wolfe Algorithm

**Date:** 19/10/2026

## Aim
Program to solve a Non-Linear Programming Problem using Frank-Wolfe Algorithm.

## Theory
The **Frank-Wolfe Algorithm** (also known as the **Conditional Gradient Method**) is an iterative optimization method used to solve constrained nonlinear programming problems by minimizing a nonlinear objective function over a convex feasible region.

The main steps are:
1. Start with an initial feasible solution.
2. Calculate the gradient of the objective function.
3. Solve a linear programming subproblem using the gradient.
4. Find the search direction:
   $$d_k = s_k - x_k$$
5. Calculate the step size $\alpha_k \in [0, 1]$ via line search.
6. Update the solution until convergence:
   $$x_{k+1} = x_k + \alpha_k d_k$$

Implemented in [`exp7.m`](./exp7.m).

## Output
See [`output.txt`](./output.txt):

```text
Enter objective function: 2*x^2 + 2*x*y + 2*y^2 - 4*x - 6*y
Enter constraint matrix: [1 2]
Enter RHS vector: 2
Enter initial point: [0.5;0.5]
Optimal solution
x = 0.3334
y = 0.8333
Minimum value = -4.1666

Enter objective function: (x-2)^2 + (y-1)^2
Enter constraint matrix: [1 1]
Enter RHS vector: 2
Enter initial point: [0;0]
Optimal solution
x = 1.4999
y = 0.5000
Minimum value = 0.5001
>>
```
