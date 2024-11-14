---
title: "FreeAlgebra"

collection: portfolio
permalink: /projects-new/theory
---

[`FreeAlgebra`](https://github.com/nlyu1/FreeAlgebra){:target="_blank"} supports the differentiable manipulation of freely-generated algebras. 
It is an offshoot project of the theoretical research on fermionic Gaussian computation and a nice implementation practice for the theory of finitely-generated algebras. Highlights: 
- Inference of a finitely-generated algebras based on its commutation, adjoint, and tracial conditions. 
  - Supports non-representable algebras e.g., Grassmann algebra with self-adjoint elements. 
  - Calculations are not built in representations, making them particularly suited for sparse computations.
- Automatic inference of multiplication rules from commutators, and support for commuting and anti-commuting tensor products.
- Inference of new commutator relations from the base algebra and the specification of an automorphism.
- Fully differentiable using Pytorch. 