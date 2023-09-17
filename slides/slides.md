---
author: "Rio Kierkels"
paging: "%d/%d"
theme: "theme.json"
---
# EdgeCase 2023: Enabling Experimentation Workshop
----

```
~~~figlet -t -f slant
Welcome !
~~~
```

Please go to https://github.com/rio/enabling-experimentation-workshop

and press the ⭐ button to join!

---

# EdgeCase 2023
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

# The Goal

----
> I want to test out this `bug` / `feature` / `new thing`
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

# The Problems

----
> My computer is a `potato`.
----

## Local

- Wrong `operating system`
- Systems might have different `CPU architecture` (ARM Macs)
- Restricted local `system access` and `system resources`

## Remote
- Shared environments can be `fragile` and `expensive`
- Experiment `reproducability` becomes problematic
- Unintentional `data leaks` and `security incidents` can happen
- Temporary environments are `idle` or `forgotten`

---

# Ephemeral Environments

----

## Desired Properties

- `Ephemerality` is built into their design
- Reasonably `fast` setup
- Effecient `resource` usage
- As `isolated` as necessary
- `Auditable` access controls
- `Tailored` to the persona
- They should encourage knowledge `reuse`

---

# The Approaches (1/2)

----
## Imperative: Continuous Integration (CI)

Utilize a CI system to provide on demand environments based on Pull Requests.

### Advantages

- Straightforward
- A CI system is likely already in use
- Most people have at least heard the term

### Disadvantages

- Error prone, hard to ensure idempotency
- Can be very slow
- Possibly tightly coupled to the SCM/CI system used

---

# The Approaches (2/2)

----

## Declarative: GitOps

Utilize GitOps based flows to provision new environments based on Pull Requests.

### Advantages

- Self-healing / continuously reconciled
- Decoupled from SCM provider
- Very reactive and fast

### Disadvantages

- Possibly hard to debug without access to the systems
- Relatively new paradigm
- Current GitOps systems rely on lots more "newer" software

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ]
~~~
```

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ] -> [ Environment ]
~~~
```

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ] -> [ Environment ]
~~~
```

```
~~~graph-easy --as=boxart
[ Updated Pull Request ]
~~~
```

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ] -> [ Environment ]
~~~
```

```
~~~graph-easy --as=boxart
[ Updated Pull Request ] -> [ Updated Environment ]
~~~
```

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ] -> [ Environment ]
~~~
```

```
~~~graph-easy --as=boxart
[ Updated Pull Request ] -> [ Updated Environment ]
~~~
```
```
~~~graph-easy --as=boxart
[ Closed Pull Request ]
~~~
```

---

# Workshop Goal

----

```
~~~graph-easy --as=boxart
[ Open Pull Request ] -> [ Environment ]
~~~
```

```
~~~graph-easy --as=boxart
[ Updated Pull Request ] -> [ Updated Environment ]
~~~
```

```
~~~graph-easy --as=boxart
[ Closed Pull Request ] -> [ No Environment ]
~~~
```
---

# Workshop Tools

----

## The Tools

- **GitHub**:         Source code management
- **ArgoCD**:         GitOps: Declarative, versioned and continuously reconciled system state
- **Kyverno**:        A rules engine and enforcer that integrates nicely with Kubernetes

### Orchestration

- **Kubernetes**:     The container workload orchestrator
- **vcluster**:       I heard you like clusters, so I put some clusters in your clusters

---

# Basic Architecture

----

```
~~~graph-easy --as=boxart
[ ArgoCD ] - watches -> [ GitHub ]
[ ArgoCD ] - watches -> [ cluster secrets ]
[ ArgoCD ] - creates -> [ vcluster ]
[ ArgoCD ] - deploys -> [ app ]
[ vcluster ] - creates -> [ cluster secrets ]
~~~
```

---

----
> [Repository      ](https://github.com/rio/enabling-experimentation-talk)
----

```
~~~figlet -c -f slant
Questions?
~~~
```

