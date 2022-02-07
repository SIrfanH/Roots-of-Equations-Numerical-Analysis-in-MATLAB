# Roots-of-Equations-Numerical-Analysis-in-MATLAB
Matlab script to find root of an equation using Numerical Methods.<br/>

# Fixed Point Iteration
This method works by transforming the initial equation to x=g(**x<sub>i</sub>**) form and then starting from some random initial **x = x<sub>i</sub>** value and calculating g(**x<sub>i</sub>**).<br/>
# Newton Raphson Method
This method uses the concept of derivative to approximate the root of the equation. If the first guess at the root is **x<sub>i</sub>**, a tangent can be extended from the point
**[ x<sub>i</sub> , f(x<sub>i</sub>) ]**. The point where this tangent crosses the x axis usually represents an improved estimate of the root.<br/>

# Regula Falsi Method
Also known as false position method. This method uses the concept of traingle similarity constructed using the initial guesses to determine subintervals that contain the root of the equation. If the iterations are performed long enough for the error to be less than epsilon value then an approximate root is said to be found.

