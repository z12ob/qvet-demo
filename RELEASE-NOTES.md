# QVET Demo v1.5.0

Portable campaign planning, driver earnings, and system verification release.

## Coverage campaign planning

- Extended Select most urgent into 12 cumulative priority layers. The first
  layer isolates the highest-need cells, while later layers expand through all
  4,032 available Tbilisi road cells.
- Removed the fixed 50 USDC selection ceiling. The escrow budget now starts at
  50 USDC and remains editable before campaign funding.
- Preserved integer atomic USDC accounting for manually entered budgets and
  added clear funding-gap feedback when a selection exceeds the allocation.
- Added the calculated campaign price to cell hover details alongside road
  name, freshness, coverage, road priority, and last useful pass.
- Deferred marketplace-session initialization until campaign funding to avoid
  unnecessary cryptographic work while editing the budget.

## Driver earning view

- Added profit, freshness, coverage, road name, and last-mapped details when
  hovering or tapping an Earn Nearby road cell.
- Kept the highest-value opportunities permanently labeled without covering
  the map in thousands of price tags.
- Distributed priority labels geographically and limited repeated labels per
  city area for a cleaner map surface.
- Improved the nearby opportunity list with real road names and compact
  freshness, coverage, and recency context.

## Portable launch experience

- Includes the complete QVET Autonomy cockpit, adaptive SUMO traffic demo, and
  operations dashboard for Windows and macOS without a source repository clone.
- Automatic setup recovery, space-safe SUMO paths, and stable per-user runtime
  pointers remain enabled.
- Packages contain no Git history, credentials, environment files, or keys.

## Source provenance

- Release manifests record the exact source tag, account-specific commit IDs,
  and the shared source tree used to build every package.
- The canonical and mirrored source repositories retain identical file trees,
  commit messages, timestamps, and branch topology.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 147 passed
- Solana, marketplace, and x402 tests: 31 passed
- Chromium production tests: 42 passed across desktop and mobile widths
- 120-frame playback smoothness check: pass
- Full Windows setup from an extracted path containing spaces: pass
- Packaged verification launcher: pass
- macOS launcher shell syntax and executable archive permissions: pass
- Archive credential and repository-history inspection: pass
