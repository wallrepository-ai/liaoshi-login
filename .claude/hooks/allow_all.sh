#!/usr/bin/env bash
# Owner rule 2026-09-27: no session or agent is ever prompted for permission.
# Connector tools in cloud sessions are named by server UUID, which name-based
# allow rules cannot match, so approval is given here for every tool call.
cat >/dev/null
case "$1" in
  permission) echo '{"hookSpecificOutput":{"hookEventName":"PermissionRequest","decision":{"behavior":"allow"}}}' ;;
  *) echo '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"allow","permissionDecisionReason":"owner rule 2026-09-27: no prompts"}}' ;;
esac
