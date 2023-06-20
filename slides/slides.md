---
author: "Rio Kierkels"
paging: "%d/%d"
theme: "theme.json"
---
# Cloud Native & Kubernetes
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

# The Requirements

----
> I want to test out this `new thing` / `bug`
> that `I found` / `I built` / `my boss wants me to use`.
----

- `services`
- `dependencies`
- `hardware`
- `data access`
- `privileges`
- `production-like`
- `knowledge`

---

# The Local Problems

----
> My computer is a `potato`.
----

- Wrong `operating system`
- Systems might have different `CPU architecture` (ARM Macs)
- Restricted local `system access`
- Setup exceeds local `system resources`

---

# The Remote Problems

----
> What do you mean you `"didn't think anyone was using it"`!?
----

- Environment setup `slow`
- Available environments are `shared` (disruptions / data / security)
- Experiment `reproducability`
- Temporary environments are `idle` or `forgotten`

---

# Ephemeral Environments

----

## Desired Properties

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
