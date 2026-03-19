# Primes in P

This repository documents my journey toward understanding primality testing and it's solution in polynomial time. It follows the historical progression from naive methods to the AKS breakthrough and beyond.

## Roadmap

| Phase                 | Topic                          |
| --------------------- | ------------------------------ |
| Foundations           | Complexipty classes BPP         |
| Foundations           | Deterministic vs probabilistic |
| Foundations           | Euclid algorithm               |
| Foundations           | Fermat’s theorem               |
| Foundations           | Euler’s theorem                |
| Foundations           | Chinese remainder theorem      |
| Foundations           | Intro to polynomial rings      |
| Foundations           | Meaning of (Z/nZ)[x]           |
| Naive baseline        | Trial division idea            |
| Naive baseline        | Trial division code            |
| Naive baseline        | Trial division example         |
| Naive baseline        | Complexity derivation          |
| Naive baseline        | Exponential vs polynomial gap  |
| Fermat                | Fermat theorem intuition       |
| Fermat                | Fermat test algorithm          |
| Fermat                | Fast exponentiation            |
| Fermat                | Example run                    |
| Fermat                | Carmichael numbers intro       |
| Fermat                | Carmichael example             |
| Fermat                | Why Fermat fails               |
| Probabilistic         | Quadratic residues intro       |
| Probabilistic         | Euler criterion                |
| Probabilistic         | Jacobi symbol                  |
| Probabilistic         | Solovay-Strassen algorithm     |
| Probabilistic         | Solovay-Strassen example       |
| Probabilistic         | Error probability analysis     |
| Probabilistic         | Miller-Rabin idea              |
| Probabilistic         | Decomposition of n-1           |
| Probabilistic         | Strong pseudoprime concept     |
| Probabilistic         | Miller-Rabin algorithm         |
| Probabilistic         | Miller-Rabin example           |
| Probabilistic         | Compare all tests              |
| Deterministic barrier | What is GRH                    |
| Deterministic barrier | Miller under GRH               |
| Deterministic barrier | Why randomness removal matters |
| Deterministic barrier | ECPP high level                |
| Deterministic barrier | ECPP intuition                 |
| Algebraic shift       | Polynomial expansion behavior  |
| Algebraic shift       | Binomial theorem mod n         |
| Algebraic shift       | Identity for primes            |
| Algebraic shift       | Failure for composites         |
| Algebraic shift       | Cyclotomic idea overview       |
| Algebraic shift       | Motivation for AKS             |
| AKS                   | AKS statement                  |
| AKS                   | Core identity intuition        |
| AKS                   | Identity examples              |
| AKS                   | Algorithm step overview        |
| AKS                   | Perfect power check            |
| AKS                   | Finding r                      |
| AKS                   | Order of n mod r               |
| AKS                   | Polynomial congruence step     |
| AKS                   | Bound on a values              |
| AKS                   | Correctness intuition          |
| AKS                   | Proof structure                |
| AKS                   | Agrawal conjecture idea        |
| AKS                   | Why conjecture not needed      |
| Post-AKS              | Runtime improvements           |
| Post-AKS              | Lenstra-Pomerance idea         |
| Post-AKS              | Practical comparison           |
| Post-AKS              | BPSW mention                   |
| Post-AKS              | Theory vs practice gap         |
| Research              | Granville survey read          |
| Research              | List open problems             |
| Research              | Pick one problem               |
| Research              | Study P vs BPP                 |
| Research              | Derandomization idea           |
| Research              | Quantum angle basics           |
| Research              | Prepare discussion questions   |
| Research              | Write observations             |


## What this repo contains

* LaTeX notes organized by phases
* A slide roadmap for presentations
* Explanations of key algorithms and ideas
* Research questions and directions

## Goal

The aim is not just to understand AKS, but to understand the full path that led to it and identify where new ideas can emerge.

## License

MIT License
