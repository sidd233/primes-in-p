# Advances in Primality Testing After the AKS Algorithm

## 1. Introduction

The development of the AKS primality test in 2002 marked a major milestone in computational number theory by establishing that primality testing lies in the complexity class **P**. This result resolved a long-standing theoretical question. However, despite its polynomial-time guarantee, the AKS algorithm is not efficient enough for practical use.

Subsequent research has therefore focused not on replacing AKS theoretically, but on improving **practical efficiency**, **certificate generation**, and **algorithmic robustness**.

---

## 2. Limitations of the AKS Algorithm

Although the AKS algorithm is deterministic and runs in polynomial time, it suffers from:

- High polynomial complexity (large exponents and constants)
- Significant overhead in polynomial arithmetic
- Poor real-world performance compared to probabilistic methods

As a result, AKS remains primarily of **theoretical importance**.

---

## 3. Practical Algorithms Dominating Post-AKS

### 3.1 Miller–Rabin Primality Test

The Miller–Rabin test is a probabilistic algorithm widely used in practice.

**Key properties:**
- Time complexity: \( O(k \log^3 n) \), where \( k \) is the number of iterations
- Error probability decreases exponentially with \( k \)
- Extremely fast and simple to implement

**Usage:**
- Standard in cryptographic libraries
- Suitable for large-scale computations

---

### 3.2 Baillie–PSW Primality Test

The Baillie–PSW test combines:
- A base-2 Miller–Rabin test
- A Lucas probable prime test

**Key properties:**
- No known counterexamples
- Deterministic in practice (though not proven)
- Faster than repeated Miller–Rabin in many cases

**Usage:**
- Frequently used as a default primality test in software systems

---

### 3.3 Elliptic Curve Primality Proving (ECPP)

ECPP is currently the most effective method for **proving primality**.

**Key properties:**
- Heuristic complexity: \( \tilde{O}((\log n)^4) \)
- Produces a verifiable certificate of primality
- Efficient for very large integers (thousands of digits)

**Advantages:**
- Deterministic verification of certificates
- Parallelizable
- Widely used in record prime computations

---

## 4. Improvements to the AKS Framework

Post-AKS research has produced several refinements:

- Reduction of constant factors
- Improved parameter selection
- Variants using alternative algebraic structures

Despite these improvements, no variant has achieved practical competitiveness with existing methods.

---

## 5. Modern Research Directions

### 5.1 Deterministic Polynomial-Time Efficiency

An open problem remains:

> To design a deterministic polynomial-time primality test that is also practically efficient.

Currently, AKS is the only unconditional solution, but it is not practical.

---

### 5.2 Algebraic and Number-Theoretic Generalizations

Recent approaches explore:

- Cyclotomic fields
- Gaussian periods
- Advanced polynomial ring structures

These aim to better characterize primality through algebraic properties.

---

### 5.3 Interactive and Verifiable Proof Systems

Research has extended primality testing into:

- Interactive proof systems
- Succinct certificates
- Verifiable computation frameworks

These approaches shift focus from direct computation to efficient verification.

---

### 5.4 Hybrid and Heuristic Methods

Modern implementations often combine multiple techniques:

- Miller–Rabin (probabilistic base tests)
- Lucas tests
- Elliptic curve methods

These hybrids aim to achieve near-deterministic reliability with high efficiency.

---

### 5.5 Parallel and Distributed Computation

Large-scale projects (e.g., distributed prime searches) leverage:

- Specialized tests (e.g., Lucas–Lehmer for Mersenne primes)
- Massive parallelism

This represents an engineering-driven advancement rather than a theoretical one.

---

## 6. Comparative Summary

| Category                 | Algorithm      | Nature          | Practical Use |
|--------------------------|----------------|-----------------|--------------|
| Theoretical breakthrough | AKS            | Deterministic   | No           |
| Probabilistic testing    | Miller–Rabin   | Probabilistic   | Yes          |
| Hybrid testing           | Baillie–PSW    | Heuristic       | Yes          |
| Primality proving        | ECPP           | Deterministic*  | Yes          |

ECPP is heuristic in runtime but produces deterministic certificates.

---

## 7. Conclusion

The AKS algorithm resolved the theoretical question of whether primality testing can be performed in polynomial time. However, practical needs have driven the continued dominance of probabilistic and heuristic methods.

In the current landscape:

- **Miller–Rabin** remains the standard for fast testing
- **Baillie–PSW** provides strong practical reliability
- **ECPP** serves as the primary method for formal primality proofs
