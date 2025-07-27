---
title: "Reinforcement Learning"
collection: talks
type: "Link"
permalink: /knowledge-base/2025-01-01-reinforcement-learning-2025
venue: "Online"
---

[Self-learning notes](https://nlyu1.github.io/reinforcement-learning){:target="_blank"} for reinforcement learning at introductory graduate level. Covers classical MDP theory as well as modern toolkits applicable to relaxed assumptions and learning-based methods. 

Sources include: 

- Harvard CS1840's textbook [an Introduction to Reinforcement Learning](https://rlbook.adzc.ai/) by Alexander Cai. 
- [Stanford CS234](https://web.stanford.edu/class/cs234/) lecture notes and [lectures](https://www.youtube.com/watch?v=WsvFL-LjA6U&list=PLoROMvodv4rN4wG6Nk6sNpTEbuOSosZdX) by professor Emma Brunskill. 

## Chapter highlights {-}

1. [Markov Decision Processes](https://nlyu1.github.io/reinforcement-learning/mdp.html#mdp) explores closed-form solutions to finite and infinite-horizon MDPs with **known dynamics and rewards**.
    a. Recursive and optimality operators; contraction properties.
    b. Control problem can be reduced to iterate (policy evaluation + greedy action), i.e. policy iteration. 
2. [Sample-based MDP solutions](https://nlyu1.github.io/reinforcement-learning/sampMDP.html#sampMDP) explores MDP solutions with **unknown dynamics, known rewards**. 
    - Estimate procedures: 
        - Monte-Carlo: high-variance no bias, no Markov assumptions, converges to MSE-optimal estimates. 
        - Temporal difference: low variance high bias, need Markov conditions; converges to DP solution on empirical distribution 
    - Monte-Carlo policy iteration: MC + PI, online on-policy. 
    - SARSA: TD policy iteration, online on-policy 
    - Q-learning: action-value iteration; can use TD (canonical) or MC to approximate action-value function, then act greedily. 
3. [Policy Methods](https://nlyu1.github.io/reinforcement-learning/polMethods.html#polMethods) explores an orthogonal approach by _directly optimizing policies_. Foundational [policy gradient theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#thm:PG) is improved in two ways: 
    - Reducing variance: [baseline theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#thm:pgBaseline)
        - The best baseline is state-value function; so good policy methods are contingent upon value method models. 
    - Using off-policy data: [relative policy difference theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#thm:PDL). 
        - [**Surrogate policy loss**](https://nlyu1.github.io/reinforcement-learning/polMethods.html#def:surrogatePG) corrects for off-policy data contingent upon policy proximity. Natural extension to [PPO-Clip algorithm](https://nlyu1.github.io/reinforcement-learning/polMethods.html#def:ppoClip). 
        - **V-trace** corrects the observed values by (clipped) importance sampling; this corrects both value and policy losses. 
4. [Inverse RL](https://nlyu1.github.io/reinforcement-learning/iRL.html#iRL) explores MDP solutions with **unknown rewards**, replacing them with estimates from expert demonstration; orthogonal to dynamics estimation methods. 
    - Main problem: identifiably problem of deducing rewards from expert policies; a partial answer is the [reward shaping theorem](https://nlyu1.github.io/reinforcement-learning/iRL.html#thm:rewardShapingTheorem). 
    - Foundational result is [max-entropy IRL](https://nlyu1.github.io/reinforcement-learning/iRL.html#maxEntropyiRL) which has clean closed-form optimization. 
5. [RL for LLMs](https://nlyu1.github.io/reinforcement-learning/rlLLMs.html#rlLLMs): eliciting rewards from preferences; direct preference optimization. 
6. [Exploration and bandits](https://nlyu1.github.io/reinforcement-learning/exploration.html#exploration): regret framework for analyzing decision optimality. Single-state memoryless MDP serves as the foundational block for MDP exploration methods. 
    - [Lai-Robbins lower bound](https://nlyu1.github.io/reinforcement-learning/exploration.html#thm:regretLowerBound): fundamental lower bound on how much trial and error are needed. 
    - Upper-confidence bound bandits dominate lower-confidence bound ones. **Be an optimist in life**!
    - [UCB regret bound](https://nlyu1.github.io/reinforcement-learning/exploration.html#thm:ucbRegret). 
    - Given priors (in a Bayesian setting), use Thompson sampling. 

  
Salient themes: 

1. Methodological approach: exact solutions in strong models (finite MDPs with known dynamics). RL consists of a diverse toolkit for tackling relaxed assumptions. 
    - _Large state-action space_: use deep model function approximation. 
    - _Unknown dynamics_: use sampling; interpolate between temporal-difference and monte-carlo. 
    - _Unknown rewards_: reward modeling (e.g. using max-entropy). 
    - _Exploration_: entropy bonus, bandit-inspired optimism. 
2. Two foundational cornerstones in RL: **(action-)value function** and **policy**. The first is contingent upon DP reductions based on Markov assumptions, giving models more "bite" when assumptions hold. 
    - Accurate action-value function implies good policy: Q-learning. 
    - Policy gradient training can benefit from good value-function estimates. 
3. Applicable themes in life: 
    - Policy-gradient theorem: weighing individual actions by rollout rewards is unbiased despite seeming greedy. 
      - Improve by bootstrapping or baseline. 
      - Correct for off-policy by importance sampling. 
    - Be an optimist under uncertainty! Better to be battered by and learn from reality than missing out. 


## Cool theorems {-} 

- [Markov Decision Processes](https://nlyu1.github.io/reinforcement-learning/mdp.html#mdp): [contraction properties](https://nlyu1.github.io/reinforcement-learning/mdp.html#thm:contraction), [optimality of $Q^*$-greedy policies](https://nlyu1.github.io/reinforcement-learning/mdp.html#thm:greedyPolicyOptimal). Convergence bound of VI and PI. 
- [Sample-based MDP solutions](https://nlyu1.github.io/reinforcement-learning/sampMDP.html#sampMDP): NA, just definition. 
- [**Policy methods**](#https://nlyu1.github.io/reinforcement-learning/polMethods.html#polMethods): [PG theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#thm:PG), [baseline theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#thm:pgBaseline), [relative policy difference theorem](https://nlyu1.github.io/reinforcement-learning/polMethods.html#def:surrogatePG). 
  - Proof of relative policy performance theorem is a canonical example applying large-deviation theory and $f$-divergences. 
- [Inverse RL](https://nlyu1.github.io/reinforcement-learning/iRL.html#iRL): [reward shaping theorem](https://nlyu1.github.io/reinforcement-learning/iRL.html#thm:rewardShapingTheorem), [**max-entropy reduction theorem**](https://nlyu1.github.io/reinforcement-learning/iRL.html#thm:maxEntReduction). 
  - Proof theme: Boltzmann methods, and interchange between single and nested optimizations. 
- [RL for LLMs](https://nlyu1.github.io/reinforcement-learning/rlLLMs.html#rlLLMs): [DPO reduction](https://nlyu1.github.io/reinforcement-learning/rlLLMs.html#dpo); variational characterization of KL and using analytic solutions to inner optimizations. 
- [Bandits and exploration](https://nlyu1.github.io/reinforcement-learning/exploration.html#exploration): [Lai-Robbins lower bound](https://nlyu1.github.io/reinforcement-learning/exploration.html#thm:regretLowerBound) and [UCB regret bound](https://nlyu1.github.io/reinforcement-learning/exploration.html#thm:ucbRegret). 
  - Proof theme: split event into "typical" and "atypical" subevents according to likelihood ratio; typical subevents provide direct bound, and bound atypical subevents using Radon-Nikodym derivative & KL properties. 