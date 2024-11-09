---
title: "Fermionic Gaussian Testing and Non-Gaussian Measures via Convolution"
collection: publications
category: manuscripts
permalink: /publication/2024-09-12-fermionic-gaussian-testing
excerpt: 'This work defines fermionic quantum convolution and demonstrates the unique entropy-invariance of fermionic Gaussian states under convolution. _Click on the title to see details_.'
date: 2024-09-12
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2409.08180'
citation: 
---

Recent works in quantum computation has recognized that Gaussianity is key to the classical simulation of quantum systems. This is supported by two celebrated results: 

1. The <u>Gottesmann-Knill theorem</u>: classical simulation of discrete bosonic Gaussian circuits. Stabilizer states can be viewed as discrete bosonic Gaussian states and Clifford unitaries Gaussian unitaries. 
    - Discrete bosonic Gaussian computation corresponds to the mathematical structure of *abelian (sub)groups*. 
2. The <u> matchgate formalism</u> proposed by Leslie Valiant (or fermionic linear optics), consisting of fermionic Gaussian states and unitaries. 
   - Fermionic Gaussian computation fundamentally depends on the existence of a small *poly-dimensional Lie subalgebra* of Gaussian operators. 

Gaussian forms have been extensively studied in classical theories; their defining properties include but are not limited to: 

1. Exponential-quadratic form in both density and characteristic representations. 
2. Maximum entropy subject to power constraint. 
3. Extremality with respect to convolution: 
    - Fixed points of convolution: central limit theorem. 
    - Entropy-power inequality. 

The shortlist above emphasizes the pivotal role of the <u>characteristic function</u> (i.e. Fourier transform) and <u>convolution</u> in characterizing Gaussian states. In particular, convolution provides a quantitative tool for analyzing Gaussian behavior. 
In the quantum case, fermionic Gaussian states have been defined and studied-but not convolution. In this work, we *look for a convolution operation satisfying the classical analogues of the properties*; the successful definition and proof of all the properties above constitute [our work](https://arxiv.org/abs/2409.08180). 

Key perspectives in addition to the technical results: 

1. The fermionic landscape of convolution and Gaussianity neatly parallels the classical and bosonic ones, <u>suggesting the existence of a more general mathematical theory</u>.
   -  The quantum perspective is a nontrivial generalization. For example, super-selection rules from particle statistics restrict the applicability of the convolution theory. The overcoming of this physical (but not computational) restriction motivates our [subsequent work](/publication/2024-11-08-displacedGaussian). 
2. <u>Characteristic functions in classical statistics manifest as physical phase space distributions</u>. 
   - The exchange statistics of the particle determine the structure of phase space: e.g. the characteristic functions of discrete bosonic states have integer coordinates, while that of fermionic states have Grassmann coordinates. 
3. Quantum generalizations highlight the additional perspective of *efficient-computability* on Gaussian forms, an aspect missing from a classical understanding. 
   - Gaussian forms lie at the intersection of physics, computing, and information. 
   - This suggests the possibility of <u>identifying novel frameworks for classical simulation by inspecting other particles</u> (e.g. non-abelian anyons). 