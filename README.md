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

    a. Solve the mixed-type BVP with triangular elements.
    
    b. The potential of a standing wave is given on the free surface (Dirichlet type).
    
    c. Zero normal derivatves of potential is given on the wetted walls (Neumann type).

2. sloshing_triangular:

    a. Compute potential in moving coordinate system. Homogeneous boundary condition is retained but Bernoulli equation is modified.
    
    b. Free-surface smoothing for position and potential is available in RK4 scheme.

3. bvp_quadrilateral:

    Solve the mixed-type BVP with quadrilateral elements.

4. sloshing_quadrilateral

    Solve sloshing problem with quadrilateral elements.
    
Verifications:
        
1. Standing wave: ALE-FEM vs analytical solution.
    
2. Sloshing wave: ALE-FEM vs EL-BEM vs experimental measurement.
