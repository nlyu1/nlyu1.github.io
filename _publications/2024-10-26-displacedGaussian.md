---
title: "Displaced Fermionic Gaussian States and their Classical Simulation"
collection: publications
category: manuscripts
permalink: /publication/2024-11-08-displacedGaussian
excerpt: 'This work extends fermionic Gaussian theory by studying the displaced (nonzero mean) case, resulting in slightly extended classical simulation, generalized fermionic convolution, and a more general understanding beyond super-selection rules. _Click on the title to see details_.'
date: 2024-11-15
venue: 'arXiv (to be published)'
paperurl: '/files/DGSimulation.pdf'
citation: 
---

This work is inspired by our previous work on [fermionic convolution](/publication/2024-09-12-fermionic-gaussian-testing). 
We found that fermionic convolution retains desirable properties *only for a subclass of special **even** quantum states*. 
The even constraint also makes the math much easier work with, and previous works on fermionic Gaussian theory has predominantly focused on the zero-mean (even) case.  

<span style="color: #6A8EAE;">Many important questions are not well understood about the general displaced Gaussian states.</span> We were originally motivated to answer them to obtain a general theory of fermionic convolution, but the study itself was bulky enough to warrant this separate work. **The following motivating questions are answered** in [this work](/files/DGSimulation.pdf):

1. How to describe <u>the action of displaced fermionic unitaries</u>? 
2. Zero-mean Gaussian states have a nice unified characterization from physical, computational, and Fourier perspectives. <u>Do displaced Gaussian states have the same coherent definition?</u>
3. The physical transformations of zero-mean fermionic Gaussian unitaries correspond to computational circuits of nearest-neighbor matchgates. <u>What circuits to displaced Gaussian unitaries correspond to?</u>
4. Can they be efficiently classically simulated, and how? 
5. How to build a bridge between results which work for even operators (e.g. fermionic convolution) and the general case without parity constraint?

Building on a Lie algebra reduction identified by Knill in 2001, we obtain the following results in response to the questions above: 

1. The extra mean of the fermionic Gaussian unitary *effectively acts as covariance on one more mode*. 
2. Displaced Gaussian states have a unified characterization from physical, computational, and Fourier perspectives, generalizing the even Gaussian case. 
3. Displaced Gaussian unitaries are equivalent to nearest-neighbor matchgates *plus arbitrary single-qubit gate on the first line*.
4. Efficient simulation can be conducted using Grassmann Gaussian integral overlap. 
5. We proposed a unitary embedding of displaced Gaussian states and unitaries into even Gaussian counterparts. 