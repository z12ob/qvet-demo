# QVET Demo v1.0.0

The first portable QVET recording kit for macOS and Windows.

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

- First setup requires internet access, Python 3.10 or newer, and Node.js 22 LTS.
- Live OpenStreetMap tiles require internet access during the demo.
- The Autonomy launcher and verification checks wait up to 60 seconds for startup on slower laptops.
- The release archives do not contain repository history, credentials, or keys.

## Validation

- Next.js production build: pass
- Python unit and integration tests: 144 passed
- Solana and x402 tests: 30 passed
- Chromium production tests: 41 passed
- Release boundary and credential scans: pass
