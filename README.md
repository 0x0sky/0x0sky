# 0x0sky

**Software engineer · Kyiv, Ukraine**

I build software across product, infrastructure, protocols, automation, and AI — mostly with Swift, Rust, Ruby, Go, and C.

I started on the client side and still care about interfaces, but most of my recent work lives deeper in the stack: deterministic cores, explicit authority boundaries, provider-independent systems, deployment, observability, and small tools that remove repeated work.

I also write poetry. That probably explains why I care more than is strictly necessary about naming, rhythm, and removing words or abstractions that do not earn their place.

**writing / notes** → [UA](https://t.me/nil_blo) · [EN](https://t.me/nil_blo_en)

## what I’m working on

- [`0xda-sha`](https://github.com/0x0sky/0xda-sha) — deterministic visual fingerprints for Git commit digests. A small Rust library-first system where the fingerprint semantics live in a deterministic core and SVG / CLI / Git integration stay outside it.
- [`0x1`](https://github.com/nilx-one/0x1) — an experimental peer-to-peer social protocol built around bilateral interactions, portable identity, human and artificial participants, and the idea that an operator should not own the social graph.
- [`Prism`](https://github.com/aiaiaiai-org/prism) — a provider-agnostic publishing engine: one intent can become explicit variants and deterministic delivery across providers without pushing provider semantics into the core.
- [`4x-errors`](https://github.com/aiaiaiai-org/4x-errors) — a shared error-reporting protocol, SDK boundary, and collector designed so the reporting system can fail without becoming the application's failure.
- [`0xda-market`](https://github.com/0xda-market) — an experimental commerce system with auction mechanics and deliberately separated domain, provider, bot, and client boundaries.
- [`mind`](https://github.com/0x0sky/mind) — a versioned public context graph for my identity, projects, engineering decisions, organisations, and writing.
- [`ping-pong-MACHINE`](https://github.com/0x0sky/ping-pong-MACHINE) — a very small new experiment around distributed synthetic traffic, availability, and edge observation.

Some of these are products, some are research, and some are infrastructure I needed badly enough to stop solving the same problem twice. I do not pretend they are all at the same maturity level.

## smaller tools and experiments

[`infraCLI`](https://github.com/0x0sky/infraCLI) · [`infraBot`](https://github.com/0x0sky/infraBot) · [`mcp-control`](https://github.com/0x0sky/mcp-control) · [`ReX`](https://github.com/0x0sky/ReX) · [`swiftui-dsl`](https://github.com/0x0sky/swiftui-dsl) · [`Serverable`](https://github.com/0x0sky/Serverable) · [`SwiftStomp`](https://github.com/0x0sky/SwiftStomp)

They range from infrastructure control and MCP tooling to UI experiments and older Swift work. I keep them public when the code or the idea is still useful, not to make the repository count look larger.

## how I tend to build

I prefer contracts over assumptions, explicit boundaries over hidden coupling, and predictable code over clever code.

**Swift** is still the language in which I have the longest production history. **Rust** is where I increasingly put deterministic shared cores and portable logic. **Ruby** is useful when product speed and expressive server-side code matter. **Go** appears around infrastructure. **C** remains the useful reminder that every abstraction eventually reaches memory, layout, and machines.

AI is part of the toolchain and, in some projects, part of the product. I am much more interested in permissions, authority, local execution, observable actions, and failure semantics than in putting an `AI` label on ordinary software.

The recurring pattern in my work is simple: make the important state explicit, keep ownership clear, and make failure visible before it becomes mysterious.

## elsewhere

- GitHub: [`0x0sky`](https://github.com/0x0sky)
- public context: [`mind`](https://github.com/0x0sky/mind)
- 0x1: [`nilx-one`](https://github.com/nilx-one)
- shared engineering projects: [`aiaiaiai-org`](https://github.com/aiaiaiai-org)
- commerce experiments: [`0xda-market`](https://github.com/0xda-market)

---

**Code is a decision made executable.  
Poetry is what remains when execution is not enough.**
