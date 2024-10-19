---
title: "Neutral Atom Array Experiment"
collection: teaching
type: "Semeghini Lab"
permalink: /projects/experiment
venue: Harvard University
date: 2024-01-01
location: "Cambridge, Massachusetts"
---

Since 2023, I have had the privilege of 
being part of the [Semeghini Lab](https://semeghini.seas.harvard.edu/research-2/), 
which aims to  build a dual-species Rubidium-Ytterbium neutral atom array 
with continuous reloading. This experience has been instrumental in 
shaping my understanding of the connection between physics and computation. 
Key takeaways include: 

1. <u>In-depth knowledge of experimental control systems</u>: 
    whole-stack knowledge of the design, compilation, and the (asynchronous) 
    physical execution of experimental sequences. Familiarity with 
    national-instrument systems. 
2. <u>Experimental skills</u>: 
    designing and building optics; E&M simulation.  
3. <u>High-level insight into system integration in the neutral atom platform</u>: 
    the organization and main components of a neutral atom array; 
    how basic physical components are assembled
    and classically controlled to facilitate (quantum) computation. 


a. Experimental Control System (June - Dec, 2023)
------

Spearheaded the development of an 
experimental control system in collaboration with Pavel Stroganov; 
it is designed to meet the unique d
emands of neutral atom array experiments. 
Highlights: 

1. Addresses key challenges such as streaming signal 
    generation for long-duration, high-resolution experiments and intuitive multi-device integration.
2. An experiment-level abstraction for National Instrument (NI) hardware, 
    enabling high-level management of multiple devices and synchronized experimental tasks. 
3. Leverages a Rust-based backend for performance and safety, integrated with Python for ease of use. 
4. See the [repository](https://github.com/Semeghini-Lab/NI-experiment-control){:target="_blank"}, or 
    the experiment [execution](https://docs.rs/niexpctrl_backend/0.1.0/niexpctrl_backend/) 
    and [compiler](https://docs.rs/nicompiler_backend/0.3.0/nicompiler_backend) 
    documentations for more detail. 

The control system is being actively used in the Semeghini Lab and the Lukin group's Atom Array 2, 
where it facilitates the design and execution of complex experimental sequences. 

b. AOM double-pass with Topica 399nm laser (June, 2024)
------

c. Precision Measurement with 1064nm laser (Sep - Oct, 2024)
------

Description Placeholder.

d. COMSOL simulation for electrode design (June, 2023)
------

Description Placeholder.