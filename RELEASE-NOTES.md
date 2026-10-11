# QVET Demo v1.3.0

Operator-facing coverage intelligence and cross-platform reliability release.

## Autonomy cockpit

- Rebuilt Coverage Planner around 4,032 Resolution 9 H3 cells sampled from
  drivable OpenStreetMap roads across greater Tbilisi. Forest and water-only
  cells are excluded.
- Added road-cell hover intelligence with freshness, observation coverage,
  last useful pass, road class, and road name.
- Added progressive urgency layers: Select most urgent starts the campaign,
  then + and - expand or contract the funded priority band within budget.
- Moved QVET Replay and Coverage Planner into the primary navigation and removed
  the redundant message, radar-point, and version strip.
- Replaced the abstract Local ENU scene with a live road-map replay. Road frame
  shows ego-stabilized radar returns, while WorldGraph shows persistent features.
- Kept raw radar and vehicle-centric 360-degree views as distinct technical
  modes, with expanding sensing shells instead of a rotating scan line.
- Corrected the driver marker orientation relative to the follow camera and
  added corner-aware route timing so turns no longer play at constant speed.
- Preserved gradual $0.00 to $2.50 coverage earnings and red-to-green funded
  cell refresh during Rider Pickup.
- Removed optional Boreas artifacts and inactive controls from the portable
  recording surface.

## Portable launch experience

- SUMO now changes to the extracted package root before constructing auxiliary
  arguments. GUI settings, block overlays, and error logs remain valid when the
  package path contains spaces on Windows or macOS.
- Both archives retain automatic setup recovery and a stable per-user Windows
  runtime location.
- Packages contain no Git history, credentials, environment files, or keys.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 147 passed
- Solana and x402 tests: 30 passed
- Chromium production tests: 42 passed at desktop and mobile widths
- Extracted Windows package from a path containing spaces: structure pass
- Packaged 4x4 SUMO scenario: pass
- Packaged 16-intersection SUMO benchmark: pass
- Packaged comparison report: pass
- Packaged digital twin stream handshake: pass
