# AVTS-005 — Evidence Proof Status Card

## Category
Evidence / Proof Card

## Purpose
Show verification, audit, release, build, or approval status in a compact trusted visual card.

## Best For
- TAPFORGE releases
- build proof
- governance reports
- trust score cards
- approval summaries
- incident status

## Style Family
Graphite Evidence Lab

## Recommended Ratio
4:5 or 16:9

## Prompt

```text
Generate an evidence proof status card for [workflow / release / system].

Purpose:
Show proof status and verification result clearly.

Audience:
operator, reviewer, stakeholder.

Include exact fields:
Title: [title]
Status: [Verified / Warning / Blocked / Review Needed]
Version: [version]
Timestamp: [timestamp]
Checks passed: [number]
Warnings: [number]
Blocking issues: [number]
Evidence location: [path or label]
Approval status: [approved / pending / rejected]
Next action: [short action]

Layout:
Status-first card with clear top status badge, metrics row, evidence details, and final action strip.

Style:
AndyAI Graphite Evidence Lab, serious, precise, audit-ready, calm technical dashboard card.

Color direction:
Graphite background, jade green for verified, amber for warnings, red for blocked, cyan for metrics, pearl white text.

Avoid:
fake numbers, vague status words, decorative clutter, unreadable small labels, fake logos, watermark.
```

## Project Mapping
- TAPFORGE
- AndyAI Director
- Memory Runtime Lab
- RAG Ingestion Factory
- Visual Factory

## Quality Gate
The viewer must instantly know whether the state is safe, warning, or blocked.
