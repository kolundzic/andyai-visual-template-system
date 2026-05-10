# AVTS-002 — Governed System Block Flow

## Category
System Block Diagram

## Purpose
Explain how a governed AI system moves from human intent to action, proof, and approval.

## Best For
- agent architecture
- approval flows
- TAP-TAP execution diagrams
- RAG pipelines
- repo production systems
- automation workflows

## Style Family
Cyber Zen Blueprint

## Recommended Ratio
16:9

## Prompt

```text
Generate a professional governed system block diagram for [system name].

Purpose:
Show how the system receives input, routes work, executes actions, verifies results, and returns proof to the human.

Audience:
technical and business readers.

Core flow:
[Input] → [Router / Orchestrator] → [Worker / Module] → [Tool / Action] → [Evidence Log] → [Verifier] → [Human Approval] → [Final Output]

Required blocks:
- Human Intent
- Orchestrator
- Worker Agent
- Tool Execution
- Evidence Log
- Verifier
- Human Approval Gate
- Final Output
- Retry / New Strategy Loop

Exact labels:
Use short clear labels. Render labels exactly.

Evidence layer:
Show Evidence Log as a persistent proof layer under the main flow.
Show Human Approval as the decision gate before final output.

Style:
AndyAI academic sci-fi, Cyber Zen Blueprint, precise, technical, calm, Japanese-inspired engineering diagram.

Layout:
Left-to-right flow, modular blocks, clean arrows, evidence layer below, retry loop returning to orchestrator.

Color direction:
Dark blueprint background, cyan for data flow, jade for verified, gold for approval, red only for blocked/rejected.

Avoid:
tangled arrows, decorative complexity, vague labels, random nodes, tiny text, fake logos, watermark.
```

## Project Mapping
- AndyAI Director
- TAPFORGE
- AndyAI Automation
- RAG Ingestion Factory
- Visual Artifact Stack

## Quality Gate
The diagram must make responsibility and proof visible.
