---
author: "Rio Kierkels"
paging: "%d/%d"
theme: "theme.json"
---
# JET Gigabites
----

```
~~~figlet -t -f slant
Enabling
Experimentation
~~~
```

---

# Introduction
----

```
~~~figlet -t -f slant
Rio Kierkels
~~~
```
---

# Introduction

----

```
~~~figlet -t -f slant
JET + Fullstaq
~~~
```

---

# The Situation

----
> I want to test out this new `<insert thing>`
> that `I found` / `I built` / `my boss wants me to use`.
----

- Models
- Training paradigms
- Algorithms
- Datastores
- Libraries
- Serving solutions
- Observability tooling
- Messaging queues

---

# The Requirements

----
> I only need access to the production account.
> It's just easier that way. You won't notice a thing, I promise.
----

- Production-like `environment`
- New `services`
- Alternate `dependencies`
- Specialized `hardware`
- Specific `knowledge`
- Data `access`

---

# The Problems

----
> The logging budget for `<insert env>` is gone again.
> Table tennis anyone?
----

- Available environments are `shared` (disruptions / data / security)
- Experiment `reproducability`
- Environment setup `slow`
- Temporary environments are `idle` or `forgotten`
- `GPU` requirements
- Systems might have different `CPU architecture` (ARM Macs)
- My computer is a `potato`

---

# A Solution

----

> **Ephemeral Environments**

----

- `Ephemerality` is built into their design
- Reasonably `fast` setup
- As `isolated` as necessary
- Effecient `resource` usage
- They should encourage knowledge `reuse`
- `Auditable` access controls (API's / data / network)

---

# The Tools

----

- **GitLab / Gitea**: Source code management
- **Task**:           A task runner with some nice features
- **Kubernetes**:     The workload orchestrator
- **k9s**:            A terminal view into your Kubernetes cluster
- **vcluster**:       I heard you like clusters, so I put some clusters in your clusters
- **ArgoCD**:         GitOps: Declarative, versioned and continuously reconciled system state
- **Kyverno**:        A rules engine and enforcer that integrates nicely with Kubernetes

---

# The Approaches (1/2)

----
## Imperative: Continuous Integration (CI)

Utilize GitLab's CI system to provide on demand environments based on Merge Requests.

### Advantages

- Straight forward
- A CI system is likely already in use

### Disadvantages

- Can be error prone, hard to ensure idempotency
- Possibly tightly coupled to the SCM/CI system used

---

# The Approaches (2/2)

----
## Declarative: GitOps

Utilize ArgoCD to determine if new environments are requested based on Pull Requests.

### Advantages

- Self-healing / continuously reconciled
- Decoupled from SCM provider

### Disadvantages

- Possibly hard to debug without access to the systems
- Relatively new paradigm

---

# Demo Time

----
> Demo Time
----

```
~~~figlet -t -f slant
Demo Time
~~~
```

---

# Thank You

----
> [Repository      ](https://github.com/rio/enabling-experimentation-talk)
> [Rio Kierkels    ](r.kierkels@fullstaq.com)
----

```
~~~figlet -c -f slant
Questions?
~~~
```
