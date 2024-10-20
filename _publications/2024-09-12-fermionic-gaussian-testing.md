---
title: "Fermionic Gaussian Testing and Non-Gaussian Measures via Convolution"
collection: publications
category: manuscripts
permalink: /publication/2024-09-12-fermionic-gaussian-testing
excerpt: 'This work defines fermionic quantum convolution and demonstrates the unique entropy-invariance of fermionic Gaussian states under convolution. <u>Click on the title to see detailed introduction</u>.'
date: 2024-09-12
venue: 'arXiv'
paperurl: 'https://arxiv.org/abs/2409.08180'
citation: 
---

Recent works in quantum computation has recognized that Gaussianity is key to the classical simulation of quantum systems. This is supported by two celebrated results: 

1. <u>The Gottesmann-Knill theorem provides classical simulation for discrete bosonic Gaussian circuits</u>. Stabilizer states can be viewed as discrete bosonic Gaussian states and Clifford unitaries Gaussian unitaries. 
    - Discrete bosonic Gaussian computation corresponds to the mathematical structure of *abelian (sub)groups*. 
2. Quantum computation consisting of <u>fermionic Gaussian states and unitaries can be efficiently simulated</u> using Leslie Valiant's [matchgate theorem](https://people.seas.harvard.edu/~valiant/stoc01.pdf). 
   - Fermionic Gaussian computation fundamentally depends on the existence of a small *poly-dimensional Lie subalgebra* of Gaussian operators. 

Gaussian forms have been extensively studied in classical theories; their defining properties include but are not limited to: 

1. Exponential-quadratic form in both density and characteristic representations. 
2. Maximum entropy subject to power constraint. 
3. Extremality with respect to convolution: 
    - Fixed points of convolution: central limit theorem. 
    - Entropy-power inequality. 

The shortlist above emphasizes the pivotal role of the <u>characteristic function</u> (i.e. Fourier transform) and <u>convolution</u> in characterizing Gaussian states. In particular, convolution informs the quantitative analysis of Gaussian behavior. 
In the quantum case, fermionic Gaussian states have been well-defined but not convolution, so we instead *look for a convolution operation satisfying the classical analogues of the properties*; the successful definition and proof of all the properties above constitute [this work](https://arxiv.org/abs/2409.08180). 

Key perspectives apart from technical results: 

1. The fermionic landscape of convolution and Gaussianity neatly parallels the classical and bosonic ones, <u>suggesting the existence of a more general mathematical theory</u>.
   -  The quantum perspective is a nontrivial generalization. For example, super-selection rules from particle statistics restrict the applicability of the convolution theory. The overcoming of this physical (but not computational) restriction motivates our [subsequent work](/publication/2024-10-26-displacedGaussian). 
2. <u>Quantum phase space embody the role of characteristic functions in classical statistics</u>. 
   - The exchange statistics of the particle determine the structure of phase space. The characteristic functions of bosonic states have integer coordinates, while that of fermionic states have Grassmann coordinates. 
3. Quantum generalizations highlight the additional perspective of *efficient-computability* on Gaussian forms, an aspect missing from a classical understanding. 
   - Gaussian forms lie at the intersection of physics, computing, and information. 
   - This suggests the possibility of <u>identifying novel frameworks for classical simulation by inspecting other particles</u> (e.g. non-abelian anyons). 