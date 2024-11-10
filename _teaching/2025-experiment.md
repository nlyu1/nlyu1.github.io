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
being part of the [Semeghini lab](https://semeghini.seas.harvard.edu/research-2/), 
which aims to  build a dual-species Rubidium-Ytterbium neutral atom array 
with continuous reloading. This experience has been instrumental in 
shaping my understanding of the connection between physics and computation; it helped me gain: 
1. <u>In-depth knowledge of experimental control systems</u>: 
    whole-stack knowledge of the design, compilation, and (asynchronous) 
    physical execution of experimental sequences. Familiarity with 
    national-instrument systems. 
2. <u>Experimental skills</u>: 
    designing and building optics; E&M simulation.  
3. <u>High-level insight into system integration in the neutral atom platform</u>: 
    this include the organization and main components of a neutral atom array, as well as how basic physical components are assembled and classically controlled to facilitate (quantum) computation. 


a. Experimental Control System (June - Dec, 2023)
------

Spearheaded the development of an 
experimental control system in collaboration with Pavel Stroganov; 
it is designed to meet the unique demands of neutral atom array experiments. 
Highlights: 
1. Addresses key challenges such as streaming signal 
    generation for long-duration, high-resolution experiments and intuitive multi-device integration.
2. An experiment-level abstraction for National Instrument (NI) hardware, 
    enabling high-level management of multiple devices and synchronized experimental tasks. 
3. Leverages a Rust-based backend for performance and safety, integrated with Python for ease of use. 
4. See the [repository](https://github.com/Semeghini-Lab/NI-experiment-control){:target="_blank"}, or 
    the experiment [execution](https://docs.rs/niexpctrl_backend/0.1.0/niexpctrl_backend/) 
    and [compiler](https://docs.rs/nicompiler_backend/0.3.0/nicompiler_backend) 
    documentations for details. 

The control system is currently under active use and maintainance in the Semeghini Lab and Atom Array 2 group at Harvard, where it facilitates the design and execution of complex experimental sequences. See the the experimental control report [slides](https://nlyu1.github.io/files/Experimental_control_capstone.pdf){:target="_blank"} for more details on the improvements relative to Labscript and our design choices. 
<br/>
<figure>
  <img src='/images/experiments/Expctrl_schematic.png' alt='Overview of experimental control system.'>
</figure>

b. AOM double-pass with Toptica 399nm laser (May - June, 2024)
------

The goal of this project is to extract four separately-detuned beams from the [Toptica TA-SHG pro](https://www.toptica.com/products/tunable-diode-lasers/frequency-converted-lasers/ta-shg-pro) for 2D MOT cooling (-40MHz), 3D MOT cooling (-40MHz), probing (+0MHz), and Zeeman slowing (-580MHz), respectively. 
My main takeaways: 
1. Optical circuit design: familiarity with optical components, polarization, 
    fiber coupling (key equation $$f=\pi \omega D/4\lambda$$, also see [reference](https://www.newport.com/medias/sys_master/images/images/h04/h2a/9131726962718/Tech-Note-14-Fiber-Coupling.pdf)), and AOM. 
2. AOM double-pass: designing, identifying relevant parts, and implementing a cat's eye double-pass configuration. 
<br/>
<figure style="text-align: center;">
  <img src='/images/experiments/SHGOpticalPath.png' alt='Illustrator design'>
  <br/>
  <img src='/images/experiments/SHGImage.png' alt='Real image'>
  <figcaption style="display: block; text-align: center; margin: 0 auto;">Optical design and the built-setup (with one AOM double-pass completed); the first double-pass has 73.4% efficiency (at 0.4mW input). </figcaption>
</figure>

c. Precision Measurement with 1064nm laser (Sep - Oct, 2024)
------

This project focuses on accurately measuring the thickness of the glass cell panes along the critical optical path of the tweezer setup. The measurement is performed by directing a tightly focused Gaussian beam (Rayleigh range ∼1μm) at the sample and identifying the focal plane by detecting the maximum intensity and coherence of the reflected light. Key takeaways: 
1. *Optical design*: Calculating Gaussian beam parameters to achieve a ≈1μm deep focal spot using a 1064nm laser source and selecting appropriate components from Thorlabs.
2. *Setup construction*: Involved fiber out-coupling, alignment of a 3cm-diameter beam, and using a beam profiling camera. 

<br/>
<figure style="text-align: center;">
  <img src='/images/experiments/4surface_design.png' alt='Illustrator design'>
  <br/>
  <img src='/images/experiments/4surface_real.JPG' alt='Real image'>
  <figcaption style="display: block; text-align: center; margin: 0 auto;">Optical design (schematic) and the built setup: the "RIO" rectangle in the lower left represents the 1064nm laser source, while the black rectangle to the right is a Thorlabs XR50P translation mount equipped with a micrometer for precise adjustments. </figcaption>
</figure>

The video below records the reflected pattern during translation stage movement: the two Gaussian-like reflection patterns (approximately at 0:08 and 0:17 in the video) correspond to reflections from the first and second surfaces of the glass sample, respectively. The distinct reflection patterns obtained from the first and second surfaces of the test sample indicate successful identification of multiple interfaces.
<br/>
<figure>
<video style="width: 100%; max-width: 800px;" controls>
  <source src="/images/experiments/4surface_video.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
<img src='/images/experiments/4surface_reflect1.png' alt='Reflection view 1'>
<br/>
<img src='/images/experiments/4surface_reflect2.png' alt='Reflection view 2'>
</figure>

d. COMSOL simulation for electrode design (June, 2023)
------

This simulation project aims to assess the efficacy of cylindrical or disc-shaped electrodes to help offset stray DC fields, which cause Stark shifts. Key takeaways: 
1. DC Electrical field simulation using COMSOL ([course link](https://www.comsol.com/blogs/course-modeling-electromagnetic-coils-in-comsol)), and denoise-capability estimation using least-squares. 
2. Simulation (see [slides](https://nlyu1.github.io/files/Electrode_simulation.pdf) for details) reveals that the 16-pole cylinder is almost the same as the 8-pole cylinder; this helped inform our final electrode design below. 


<br/>
<figure style="text-align: center;">
  <img src='/images/experiments/electrodesFinal.png' alt='Final electrode design'>
  <br/>
  <img src='/images/experiments/electrodesModel.png' alt='Electrode simulation model'>
  <figcaption style="display: block; text-align: center; margin: 0 auto;">Top: model of the finalized electrode design (credit: Yi Zhu). Below: COMSOL models of the two candidate designs.  </figcaption>
</figure>