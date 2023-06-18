---
author: "Rio Kierkels"
paging: "%d/%d"
theme: "theme.json"
---
# DevOps & Cloud Native Storytelling
----

```
~~~figlet -t -f slant
Enabling
Experimentation
~~~
```
Feat. kubernetes / vcluster / argocd / and more ...

---

# Introduction
----

```
~~~figlet -t -f slant
Rio Kierkels
~~~
```
- Visual Effects Background
- Software/Infrastructure Engineer
- Specialize in DevOps Practices

---

# The Situation

----
> I want to test out this `new thing` / `bug`
> that `I found` / `I built` / `my boss wants me to use`.
----

- Webservers
- Distributed Task Runners
- Build Systems
- ML Training Services
- Datastores
- Operators / Controllers
- Libraries
- Virtualization Systems
- Observability Tooling
- Messaging Queues
- ...

---

# The Requirements

----
> I only need access to the production account.
> It's just easier that way. You won't notice a thing, I promise.
----

- New `services`
- Alternate `dependencies`
- Specialized `hardware`
- Data `access`
- Elevated `privileges`
- Production-like `environment`
- Specific `knowledge`

---

# The Problems

----
> My computer is a `potato`.
----

- Windows
- Locked down local systems
- Systems might have different `CPU architecture` (ARM Macs)
- Setup exceeds local system resources
- Environment setup `slow`
- Available environments are `shared` (disruptions / data / security)
- Experiment `reproducability`
- Temporary environments are `idle` or `forgotten`

---

# A Solution

----

> **Ephemeral Environments**

----

- `Ephemerality` is built into their design
- Reasonably `fast` setup
- Effecient `resource` usage
- As `isolated` as necessary
- `Auditable` access controls (API's / data / network)
- `tailored` to the persona
- They should encourage knowledge `reuse`

---

# The Approaches (1/2)

----
## Imperative: Continuous Integration (CI)

Utilize GitLab's CI system to provide on demand environments based on Merge Requests.

### Advantages

- Straightforward
- A CI system is likely already in use
- Most people have at least heard the term

### Disadvantages

- Error prone, hard to ensure idempotency
- Can be very slow
- Possibly tightly coupled to the SCM/CI system used

---

# Imperative Demo

----

## The Tools

- **GitLab**:         Source code management
- **GitLab CI**:      GitLab's built in pipeline runner
- **Task**:           A task runner with some nice features

### Orchestration

- **Kubernetes**:     The container workload orchestrator
- **vcluster**:       I heard you like clusters, so I put some clusters in your clusters

---

# The Approaches (2/2)

----

## Declarative: GitOps

Utilize ArgoCD to provision new environments based on Pull Requests in Gitea.

### Advantages

- Self-healing / continuously reconciled
- Decoupled from SCM provider
- Very reactive and fast

### Disadvantages

- Relatively new paradigm
- Current GitOps systems rely on lots more "newer" software
- Possibly hard to debug without access to the systems

---

# Declarative Demo

----

## The Tools

- **Gitea**:          Light weight source code management
- **ArgoCD**:         GitOps: Declarative, versioned and continuously reconciled system state
- **Kyverno**:        A rules engine and enforcer that integrates nicely with Kubernetes

### Orchestration

- **Kubernetes**:     The container workload orchestrator
- **vcluster**:       I heard you like clusters, so I put some clusters in your clusters

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

---

# GitHub Code Repo QR Code

```
~~~qrencode -m 2 -t UTF8
https://github.com/rio/enabling-experimentation-talk
~~~
```
