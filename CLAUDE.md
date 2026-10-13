# CLAUDE.md — wallrepository-ai/liaoshi-login

## What this repository is

The public GitHub Pages host for the AID (AI and Database) connector's sign-in pages. It holds
eight static HTML files, a README, and nothing else. No build step, no dependencies, no secrets.

Served at: https://wallrepository-ai.github.io/liaoshi-login/

| File | Purpose |
|------|---------|
| `index.html` | Sign-in page (OAuth authorize); the "Create an account" button sits at the top, above the sign-in form |
| `signup.html` | Account creation |
| `verified.html` | Post-verification landing page |
| `menu.html` | Public "data bits" info menu |
| `connect.html` | Connection guide: sign-in steps and the per-tool permission cards Claude shows |
| `reset.html` | Password reset, step 1: the address; posts to `/recover` |
| `newpassword.html` | Password reset, step 2: the new password; the reset email's link lands here with a token in the URL fragment; posts to `/password` |
| `privacy.html` | Privacy note linked from sign-up, sign-in and the menu (draft of 2026-10-12, owner to confirm) |

## The main project is elsewhere

This repo is a small satellite. The actual project is the **private** repository
`wallrepository-ai/sources`: the Liaoshi sources database, its Supabase backend,
the MCP server, and all research code and documentation.

A session started from this repository sees only these HTML files. If the task
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
`index.html` passes the state on to `signup.html` (`?state=`), which returns it in a hidden
`mcp_state` field, so the server can send a researcher who already has an account back to
sign in without a new connection attempt. The sign-in card opens with a "New researcher?"
block whose "Create an account" button is drawn like the sign-in button, then a rule and
the sign-in form under "Already have an account?" (owner request 2026-10-13, after
researchers typed a new address into the sign-in form and were refused); the `invalid`
message says the same. The sign-in page knows four error codes in its
query string (`invalid`, `expired`, `unverified`, `exists`), one notice
(`password_changed`), and prefills the email field from `?email=`; the sign-up page shows
`?notice=check_email` or `?error=<text>` and posts the feedback box as `feedback=yes`, which
the function records on the account's profile row. Password reset: `reset.html` posts the
address to `/recover` and shows `?notice=sent` or `?error=<text>`; Supabase Auth's reset
email links to `newpassword.html` with a one-hour token in the URL fragment (that address is
in the Auth redirect allow list); the page moves the token into a hidden `access_token`
field and posts it with the new password to `/password`, which sends the researcher to the
sign-in page with the notice. Every password field has an eye button that shows the typed
text.

Testing a change to these pages: `python3 refinement/scripts/login_e2e.py pages` in
`sources` renders every page state with screenshots, and `start` plus `finish` run the
whole procedure (account, email, verification, OAuth sign-in, MCP call, cleanup). The
procedure and its record: `sources/docs/LOGIN_TEST_PROCEDURE.md`.

Consequences for anyone editing these files:

- A change to a form field name or a form action can break the live OAuth flow.
  Check `oauth.ts` in `sources` before renaming anything in a form.
- Validation rules here must match what the edge function accepts. A stricter rule
  in the HTML silently rejects input the server would have allowed.
- Pushing to `main` deploys to the live site immediately. Finished work merges at
  once without owner review (owner, 2026-09-27), with one gate: a change to a form
  field name, a form action or a validation rule merges only together with the
  matching change in `oauth.ts` in `sources`, because the two must agree or login
  breaks. Tell the owner in the next report what changed on the live site.

## Working norms

The owner does not write code. Explain changes in plain language and say what the
visible effect will be. The full working norms live in `sources/CLAUDE.md`; they
apply here too.

Text style for anything committed here: American spelling, no em dashes in prose,
continuous paragraphs.

## Security

This repository is public. Never add a key, token, password, Supabase service role
credential, or private URL. The connector URL is public by design; nothing else is.
