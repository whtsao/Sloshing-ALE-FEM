# sloshing-potential-alefem

Solve the sloshing problem by Finite Element method based on potential-flow model

Numerical description:

1. mesh type: a) even grid, b) cosine grid, c) nonlinear based on power rule.
2. nodal velocity: a) average method, b) Galerkin method.
3. reference frame: a) Eulerian-Lagrangian, b) arbitrary Eulerian-Lagrangian.
4. time integration: a) first-order explicit, b) second-order AB2, c) 4th-order Runge-Kutta method.
5. free surface smoothing: a) cubic spline smoothing for RK4.
6. examples: a) standing wave, b) sloshing wave, c) wave propagation by wavemaker.
7. element type: a) 3-node triangle cell, b) 4-node quadrilateral cell.

File name and Context:

1. bvp_triangular:

    Solve the mixed-type BVP with triangular elements. The potential of a standing wave is given on the free surface (Dirichlet type) and zero normal derivatves of potential is given on the wetted walls (Neumann type).

2. sloshing_triangular:

    a. Compute potential in moving coordinate system. Homogeneous boundary condition is retained but Bernoulli equation is modified.
    
    b. Free-surface smoothing for position and potential is available in RK4 scheme.

3. bvp_quadrilateral:

    Solve the mixed-type BVP with quadrilateral elements.
   
To solve the sloshing problem, please use the following code.


2. sloshing_ALE_7: (NOT DONE YET)

    a. Change the element from triangle element to quadrilateral element.
    
    
        
    c. Standing wave: FEM (wav_std.dat attached) vs analytical solution.
    
    d. Sloshing wave: FEM vs BEM vs experimental measurement (wav_fem.dat, wav_bem.dat, wav_exp.dat attached).
