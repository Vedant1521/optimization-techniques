# Experiment 10: Barrier Function Method for NLPP

**Date:** 09/11/2026

## Aim
Program to solve a given NLPP using the Barrier function method.

## Theory
The **Barrier Function Method** transforms a constrained nonlinear optimization problem into an unconstrained one by incorporating inequality constraints into the objective function as barrier terms.

For a minimization problem subject to $g_i(x) \le 0$, the logarithmic barrier function is defined as:

$$\Phi(x, \mu) = f(x) - \mu \sum_{i=1}^{m} \ln(-g_i(x))$$

As the barrier parameter $\mu$ gradually approaches zero, the solution converges towards the constrained optimal solution. The initial point must lie strictly within the feasible region, satisfying all inequality constraints $g_i(x) < 0$ ([`exp10.m`](./exp10.m)).

## Output
See [`output.txt`](./output.txt):

```text
>> exp10
Enter objective function: x^2 + y^2
Enter constraint function (g <= 0): 4 - x - y
Enter initial feasible point: [2 3]
Optimal solution
    2.0000
    2.0000

Minimum value = 8.0000
>> exp10
Enter objective function: (x-3)^2 + (y-2)^2
Enter constraint function (g <= 0): x + y - 2
Enter initial feasible point: [0 0]
Optimal solution
    1.5000
    0.5000

Minimum value = 4.5000
>>
```
