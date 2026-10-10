# QVET Demo v1.0.1

Reliability update for the portable QVET recording kit on macOS and Windows.

## Installation repair

- Added a one-click Windows installer that downloads, extracts, prepares, and
  verifies the complete package in a stable per-user location.
- Added an install-first macOS launcher inside the signed-mode ZIP structure.
- Added automatic setup recovery to every Run and Verify launcher.
- Added a durable ready marker that is written only after SUMO dependencies,
  locked web dependencies, and the production cockpit build all succeed.
- Moved the Windows Python runtime to a short application-data path to prevent
  SUMO installation failures caused by legacy path-length limits.
- Replaced the misleading `Run Setup first` fallback with a precise compressed
  ZIP or setup-log diagnosis.
- Added persistent setup logs under `logs/setup.log`.

## Highlights

- Driver-first navigation with 2D overview and heading-aware 3D vehicle follow
- Route-specific +$2.50 rider incentive and a broader citywide Earn Nearby map
- Genuine H3 Resolution 9 coverage cells over Tbilisi
- Distinct Sensor, Body, Local ENU, and persistent WorldGraph views
- Deterministic QVET replay and attributed Boreas real-sensor validation
- x402 WorldTile delivery and mock or Devnet settlement presentation
- 16-intersection Ingolstadt SUMO scenario with adaptive traffic control
- Operations dashboard and automated package verification launchers

## Package notes

- First setup requires internet access. Python 3.10 or newer and Node.js 22 or
  newer are used when installed; Windows setup can bootstrap missing tools.
- Live OpenStreetMap tiles require internet access during the demo.
- The Autonomy launcher and verification checks wait up to 60 seconds for startup on slower laptops.
- The release archives do not contain repository history, credentials, or keys.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 144 passed
- Solana and x402 tests: 30 passed
- Chromium production tests: 41 passed
- Release boundary and credential scans: pass
