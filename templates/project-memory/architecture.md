# Architecture

## Overview

Describe the system architecture in 3–5 lines: monolith or services, frontend/backend split, key runtime components.

## Key directories

```
src/
├── app/          # Next.js App Router or equivalent entry points
├── components/   # Shared UI components
├── server/       # Backend logic (API handlers, services, DB access)
├── schemas/      # Shared type/schema definitions
└── lib/          # Utilities and helpers
```

## Data flow

Describe the main data paths: user → frontend → API → database → external services.

## External integrations

List external APIs, services, or systems the project depends on.

## Authentication and authorization

How are users identified and what access controls exist? (If not applicable, state "None — this project has no auth.")
