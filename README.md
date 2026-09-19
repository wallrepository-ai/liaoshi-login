# liaoshi-login

Static sign-in pages for the 遼史 sources-liaoshi MCP connector, hosted on GitHub
Pages at https://wallrepository-ai.github.io/liaoshi-login/. The connector itself is
the Supabase edge function `mcp-server` in the private repository
`wallrepository-ai/sources`; it redirects browsers to these pages for the authorize,
sign-up and welcome steps, and the forms here post back to it. `CLAUDE.md` describes
the files, the wiring and the working norms. This README records one question that
comes up when people first use the connector.

## Why Claude asks "Claude wants to use Query from ..."

Every tool of a custom connector in Claude shows a card (Deny, Always allow, Allow
once) until the user chooses Always allow for that tool. The card is Claude's own
permission step, applied in the chat client before any request leaves the browser.
It is not a Supabase permission. Row level security, Supabase Auth settings,
`verify_jwt`, API keys and OAuth scopes are all evaluated after the user has
approved the call, so nothing on the Supabase side can remove the cards. The sign-in
requirement is a separate step: it happens once when the connector is added and is
renewed silently for 30 days.

The server can still influence how many cards a researcher sees. The MCP server
already sends `annotations: { readOnlyHint: true, openWorldHint: false }` on
`list_tables`, `describe_table`, `query`, `menu` and `get_scan`, and
`{ readOnlyHint: false, destructiveHint: false }` on `submit_comment`. Claude uses
these to sort the tools into read-only and write groups on the connector's settings
page, where a whole group can be set to Always allow. They do not suppress the first
card. A `title` on each tool (for example "Query (read-only)") changes the wording of
the card from the humanized tool name to the title.

One card is paid per distinct tool, so a first question that runs `list_tables`,
then `describe_table`, then `query` costs three cards before the first answer.
Putting the columns of the core tables (`chapters`, `verses`, `all_verses`,
`entity_synonyms`, `date_conversions`) into the server instructions and into the
`query` tool description lets Claude go straight to `query` for common questions.
Merging `list_tables` and `describe_table` into one tool with an optional
`table_name` removes one more card.

Every new version of the edge function makes Claude ask again for every tool, for
every user, even when the tool list is unchanged (anthropics/claude-ai-mcp issue
1032). Server changes should therefore be batched, and the function should not be
redeployed for wording alone.

The page `connect.html` tells researchers what the cards mean, recommends Always
allow for the five read-only tools, and points to the connector settings page for
setting all of them at once. The only way to have no cards at all is a client with a
different approval model, for example a web front end of your own that calls the
Anthropic Messages API with its MCP connector, where tool calls are not gated by a
per-call card.

Sources: Claude Help Center, "Get started with custom connectors using remote MCP"
(support.claude.com/en/articles/11175166) and "Use connectors to extend Claude's
capabilities" (support.claude.com/en/articles/11176164); the MCP specification of
2025-06-18, Tools, Annotations; anthropics/claude-ai-mcp issues 491, 493 and 1032.
