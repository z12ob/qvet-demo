# QVET Demo v1.2.0

Operator-facing interface and first-run reliability release for the portable QVET
demo kit.

## Autonomy cockpit

- Promoted the enterprise Coverage planner to a full System Proof mode with a
  city-scale OpenStreetMap surface and 762 contiguous H3 Resolution 9 cells.
- Added direct selection, removal, reset, urgent-cell selection, budget safety,
  and deterministic integer-atomic campaign pricing.
- Removed the inactive Boreas and machine-consumer controls from the recording
  interface so the product story stays focused on the working replay and payer
  workflow.
- Replaced verbose system copy and separate telemetry cards with compact
  overlays, while keeping the replay timeline and primary actions visible.
- Aligned QVET replay to the same geographic route used in Driver View and made
  the complete 225 m sensing volume visible by default.
- Smoothed map bearing across route segments so the vehicle-follow camera turns
  continuously instead of snapping at polyline boundaries.
- Rider Pickup coverage now transitions cell-by-cell from stale red to refreshed
  green, with earnings starting at $0.00 and accruing along the funded route.
- Earn Nearby now covers a contiguous city territory instead of a small set of
  disconnected samples.

## Portable launch experience

- Fixed first-run setup when a `uv`-created Python environment does not yet
  contain pip.
- Fixed SUMO GUI arguments when the extracted package path contains spaces. All
  auxiliary files are now passed as safe package-relative tokens.
- Added plain terminal output to Traffic and Verify launchers for consistent
  rendering on Windows and macOS terminals.
- Removed unused Boreas payloads from the release archives.
- Packages remain free of Git history, credentials, environment files, and
  private keys.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 146 passed
- Solana and x402 tests: 30 passed
- Chromium production tests: 42 passed across the landing site, operator
  console, x402 route, and unified demo at desktop and mobile widths
- Extracted Windows package setup: pass from a path containing spaces
- Packaged 4x4 SUMO scenario: pass
- Packaged 16-intersection SUMO benchmark: pass
- Packaged comparison report: pass
- Packaged digital twin stream handshake: pass
- Packaged Autonomy production route: pass
- Windows and macOS release workflow: pass
  https://github.com/z12ob/qvet-demo/actions/runs/38101672601
