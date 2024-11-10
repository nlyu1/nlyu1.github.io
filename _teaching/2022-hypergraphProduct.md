---
title: "MIT Quantum Computation II (Spring 2023)"
collection: teaching
type: "Graduate course"
permalink: /projects/final-projects
venue: "University 1, Department"
date: 2023-01-01
location: "City, Country"
---

This final project explores the [hypergraph product of convolutional codes](/files/8371_final_project.pdf). It is part of a research project conducted at MIT's Shor group in collaboration with Zhiyang He, Andrey Boris Khesin, Jonathan Lu, and Peter Shor. The focus is on exploring quantum CSS codes through the lens of hypergraph products and convolutional code techniques.

Main contents of the final project paper: 

1. <u>Hypergraph construction of quantum CSS codes</u>: hypergraph products can be used to generate quantum block codes using classical ones. This project seeks to apply this "quantization" technique to convolutional codes. 
2. <u>Relation between classical convolutional and block codes</u>: convolutional codes generalize block codes by replacing scalars in parity-check matrices with polynomials of the delay operator. Scalar parity-check matrices are generalized to modules, and syndrome equations are computed using the invariant-factor theorem. 
3. <u>Maximum-likelihood decoding, the Viterbi Algorithm</u>: explains the construction of message-based (common used classically but not quantum-applicable) and syndrome-based decoding. This highlights the unique challenges quantum convolutional codes compared to their classical counterparts. 
4. The quantum syndrome-based Viterbi algorithm for convolutional codes is impractical since the trellis length (runtime is exponential in this) scales linearly with runtime. 

<br/>
<figure style="text-align: center;">
  <img src='/images/qHGPC.png' alt='Tanner Graph'>
  <figcaption style="display: block; text-align: center; margin: 0 auto;"> The Tanner graph of a hypergraph-product convolutional code. 
  </figcaption>
</figure>