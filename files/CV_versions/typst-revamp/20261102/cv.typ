#set document(title: "Xingjian Nicholas Lyu - CV", author: "Xingjian Nicholas Lyu")
#set page(paper: "us-letter", margin: (left: 72pt, right: 71.5pt, top: 72pt, bottom: 72pt))
#set text(font: "EB Garamond", size: 11pt, lang: "en", top-edge: 0.8em, bottom-edge: -0.2em)
#set par(leading: 2.5pt, spacing: 0pt, justify: false)
#set smartquote(enabled: false)
#show link: it => text(fill: rgb("0080ff"), underline(it))

#let row(lhs, rhs) = block(height: 13.5pt)[
  #grid(columns: (1fr, auto), column-gutter: 8pt, lhs, align(right, rhs))
]
#let section(title, gap: 16pt) = {
  v(gap)
  align(center, strong(title))
  v(2.5pt)
}

#let bullets(..items) = {
  set par(leading: 1.8pt)
  set list(marker: [•], indent: 18pt, body-indent: 14.2pt, spacing: 3pt, tight: true)
  list(..items.pos())
}

#let blue(url, label) = link(url, label)

#align(center)[
  #text(size: 12pt, weight: "bold")[Nicholas Lyu] \
  Jane Street, New York, NY 10007 \
  nlyu\@janestreet.com | lyuxingjian\@gmail.com
]

#section([Education])

#row([*Harvard University*], [Cambridge, MA])

A.B. Degree in Physics with CS secondary. GPA: 3.92/4.0 \
*Selected coursework:* Computational Learning Theory, Theoretical Computer Science, Information Theory, Systems Programming, Compilers, Quantum Computation and Information, General Relativity.

#section([Industry Experience])

#row([*Jane Street*], [])
#row([Machine Learning Researcher], [Aug 2025 - Present])

#v(1pt)

#bullets(
  [Team focus: marketdata models in billions parameter scale; frontier-sized LLMs.],
  [Personal focus: (1) diagnosing and optimizing scaling bottlenecks, (2) architecture, (3) pretrain science, and (4) pretrain-posttrain interactions. ],
  [Notes on related topics:
    #blue("https://snakamoto404.github.io/blogs/machine-learning/why-should-you-weight-norm-your-model/", [weight norms]), #blue("https://snakamoto404.github.io/blogs/machine-learning/scaling-invariants/", [μP scaling invariants]), 
    #blue("https://snakamoto404.github.io/blogs/machine-learning/optimizer-intuitions/", [optimizers]),
    #blue("https://snakamoto404.github.io/blogs/machine-learning/ot-generative-3-diffusion/", [diffusion as MLE]).],
  [Volunteer lecturer for interns and new hires; personal notes for sample summer class on
    #blue("https://snakamoto404.github.io/blogs/machine-learning/options-heat-diffusion-quantum-mechanics/", [options pricing, heat diffusion, and quantum mechanics]).],
)

#v(15pt)

#row([*Jane Street*], [])
#row([Quantitative Research Intern], [May - Aug 2024])

#v(1pt)

#bullets(
  [Developed the firm's first deep learning weather model via a physics-constrained neural-ODE.],
)

#section([Undergraduate Research])

#row([*Harvard University*], [])
#row([Undergraduate Researcher], [Oct 2023-Nov 2024])

#v(1pt)

#bullets(
  [“#blue("https://arxiv.org/abs/2409.08180", [Fermionic Gaussian Testing and Non-Gaussian Measures via Convolution])”, first author.],
  [“#blue("https://iopscience.iop.org/article/10.1088/1751-8121/ade647/meta", [Displaced Fermionic Gaussian States and their Classical Simulation])”, first author. _Journal of Physics A: Mathematical and Theoretical_ (2025).],
)

#v(15pt)

#row([*Semeghini Lab in Applied Physics*], [])
#row([Undergraduate researcher], [April 2022 - Oct 2024])

#v(1pt)

#bullets(
  [Founding designer and engineer of the #blue("https://github.com/nlyu1/NI-experiment-control", [quantum computing control system]), operational in Harvard's
    #blue("https://semeghini.seas.harvard.edu/", [Yb-Rb]) and
    #blue("https://lukin.physics.harvard.edu/continuously-operating-atom-array", [Atom Array II]) groups.],
  [“#blue("https://www.nature.com/articles/s41586-025-09596-6", [Continuous operation of a coherent 3,000-qubit system])”. _Nature_ (2025).],
)

#v(10pt)

Also see select notes on
#blue("https://nlyu1.github.io/reinforcement-learning/index.html", [reinforcement learning (Stanford CS234)]),
#blue("https://nlyu1.github.io/classical-info-theory/", [classical information theory]),
#blue("https://nlyu1.github.io/files/Phy143b-Notes.pdf", [quantum mechanics]), and
#blue("https://nlyu1.github.io/classical-mechanics/index.html", [classical mechanics]).

#section([Extracurricular Activities])

#row([*Kaggle*], [Cambridge, United States])
#row([#blue("https://www.kaggle.com/roguekk007", [Competitions Master]), top percentile of 200k participants], [2019-2022])

#section([Technical Skills])

*Computational Libraries:* PyTorch, JAX \
*Programming Languages:* Python, C++, OCaml, Rust
