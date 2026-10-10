# QVET Demo v1.1.0

Operator-facing interaction and reliability release for the portable QVET demo kit.

## Autonomy cockpit

- Expanded Earn Nearby from a small sample to 86 genuine H3 Resolution 9 cells
  across Tbilisi, with restrained reward labels and readable city coverage.
- Rebuilt route playback around one distance-based pose model so the map,
  vehicle heading, mini-map, and progress timeline remain synchronized.
- Added live coverage earnings that begin at $0.00 and accrue as the vehicle
  crosses each funded Rider Pickup hexagon.
- Added an enterprise coverage planner with direct cell selection, removal,
  reset, urgent-cell selection, budget safety, and deterministic integer-atomic
  pricing based on freshness, road importance, and capture difficulty.
- Turned Boreas validation into a visible 10-second inspection replay of 2,048
  real Navtech returns and Applanix pose data with CC BY 4.0 attribution.
- Added a visible roof sensor pod, transparent surround envelope, range rings,
  and rotating RF sweep. The 225 m radius is labeled as a demo profile rather
  than a frozen production hardware claim.
- Made x402 demo payments unique per browser request while preserving server
  replay protection for duplicate settlement payloads.

## Portable launch experience

- Preserved one-click Windows installation and automatic launcher recovery.
- Preserved install-first macOS setup for Apple silicon and Intel.
- Increased the macOS cockpit startup allowance to 90 seconds for slower
  machines on first launch.
- Packages remain free of Git history, credentials, environment files, and keys.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 144 passed
- Solana and x402 tests: 30 passed
- Updated Chromium autonomy demo tests: 10 passed at desktop, 390px, and 320px
- Public release install and verification: passed on Windows and macOS 14
- Cross-platform evidence: https://github.com/z12ob/qvet-demo/actions/runs/38092474328
