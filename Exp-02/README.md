# Experiment 2: Convexity Check Using Hessian Matrix

**Date:** 07/09/2026

## Aim
Program to check the convexity of a function by using the Hessian matrix.

## Theory
The **Hessian matrix** is a square matrix containing all the second-order partial derivatives of a multivariable function.

For a function of two variables $f(x, y)$, the Hessian matrix is given by:

$$H = \begin{bmatrix} \frac{\partial^2 f}{\partial x^2} & \frac{\partial^2 f}{\partial x \partial y} \\ \frac{\partial^2 f}{\partial y \partial x} & \frac{\partial^2 f}{\partial y^2} \end{bmatrix}$$

The convexity conditions are:
- If all eigenvalues of $H$ are non-negative, the function is convex.
- If all eigenvalues of $H$ are non-positive, the function is concave.
- If the Hessian has both positive and negative eigenvalues, the function is neither convex nor concave.

For an interval or region, these conditions must hold at every point in that region (implemented in [`exp2.m`](./exp2.m) over a $30 \times 30$ grid).

## Output
See [`output.txt`](./output.txt):

```text
>> exp2
Enter the function: x^2 + y^2
Enter lower limit: -2
Enter upper limit: 2
Hessian matrix is
[2, 0]
[0, 2]

Function is convex
>> exp2
Enter the function: -x^2 - y^2
Enter lower limit: -2
Enter upper limit: 2
Hessian matrix is
[-2,  0]
[ 0, -2]

Function is concave
>> exp2
Enter the function: x^2 - y^2
Enter lower limit: -2
Enter upper limit: 2
Hessian matrix is
[2,  0]
[0, -2]

Neither convex nor concave
>>
```
