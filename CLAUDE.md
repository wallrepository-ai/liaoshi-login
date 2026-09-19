# CLAUDE.md — wallrepository-ai/liaoshi-login

## What this repository is

The public GitHub Pages host for the Liaoshi connector's sign-in pages. It holds
five static HTML files, a README, and nothing else. No build step, no dependencies, no secrets.

Served at: https://wallrepository-ai.github.io/liaoshi-login/

| File | Purpose |
|------|---------|
| `index.html` | Sign-in page (OAuth authorize) |
| `signup.html` | Account creation |
| `verified.html` | Post-verification landing page |
| `menu.html` | Public "data bits" info menu |
| `connect.html` | Connection guide: sign-in steps and the per-tool permission cards Claude shows |

## The main project is elsewhere

This repo is a small satellite. The actual project is the **private** repository
`wallrepository-ai/sources`: the Liaoshi sources database, its Supabase backend,
the MCP server, and all research code and documentation.

A session started from this repository sees only these four HTML files. If the task
touches anything beyond the markup of these pages, attach `wallrepository-ai/sources`
as well and read its `CLAUDE.md`, which carries the project's working norms.

## Why this is a separate public repository

Deliberate, owner-approved on 2026-09-04. Recorded in `sources/docs/ITERATIONS.md`
and `sources/docs/SECURITY_GITHUB.md`. The chain of reasoning:

1. Supabase rewrites HTML to `text/plain` with a sandbox CSP on `*.supabase.co`,
   so the OAuth login page rendered as raw source code when served from there.
2. The pages therefore have to be hosted outside Supabase.
3. GitHub Pages requires a public repository.
4. `sources` is private and must stay private.

So the only public surface is this repo, which contains nothing sensitive. Do not
propose merging it into `sources`, and do not keep a second copy of these files there.

## How these pages are wired up

The Supabase edge function at `sources/supabase/functions/mcp-server/oauth.ts` reads
a `LOGIN_PAGES_URL` secret and issues 302 redirects to the pages here for the
authorize, signup, and welcome steps. The forms post back to the edge function.
OAuth state travels as a query parameter plus a hidden form field, with a cookie fallback.

Consequences for anyone editing these files:

- A change to a form field name or a form action can break the live OAuth flow.
  Check `oauth.ts` in `sources` before renaming anything in a form.
- Validation rules here must match what the edge function accepts. A stricter rule
  in the HTML silently rejects input the server would have allowed.
- Pushing to `main` deploys to the live site immediately. Treat a merge to `main`
  as a deployment and confirm with the owner first.

## Working norms

The owner does not write code. Explain changes in plain language and say what the
visible effect will be. The full working norms live in `sources/CLAUDE.md`; they
apply here too.

Text style for anything committed here: American spelling, no em dashes in prose,
continuous paragraphs.

## Security

This repository is public. Never add a key, token, password, Supabase service role
credential, or private URL. The connector URL is public by design; nothing else is.
