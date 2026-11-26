# Experiment 8: Linear Fractional Programming (Charnes and Cooper Algorithm)

**Date:** 19/10/2026

## Aim
Program to solve linear fractional programming problems using the Charnes and Cooper Algorithm.

## Theory
In the **Charnes and Cooper method**, to maximize $\frac{c^T x + \alpha}{d^T x + \beta}$ subject to $Ax \le b,\; x \ge 0$ (with $d^T x + \beta > 0$), we introduce:

$$y = t x, \quad t = \frac{1}{d^T x + \beta}$$

The transformed linear programming problem becomes:

$$\text{Maximize } c^T y + \alpha t$$

Subject to:

$$A y - b t \le 0$$

$$d^T y + \beta t = 1$$

$$y, t \ge 0$$

The original decision variables are recovered via $x = y / t$ ([`exp8.m`](./exp8.m)).

## Output
See [`output.txt`](./output.txt):

```text
c (column): [1;0]
alpha: 0
d (column): [1;1]
beta: 1
A: [1 1;1 2]
b (column): [1;1]
x =
     1
     0

Optimal ratio = 0.5000

c (column): [2;1]
alpha: 1
d (column): [1;3]
beta: 2
A: [1 1;1 2]
b (column): [4;6]
x =
     4
     0

Optimal ratio = 1.5000
>>
```
