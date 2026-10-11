# QVET Demo Distribution

Portable, operator-facing builds of the QVET Traffic and QVET Autonomy demos.
Download the package for your operating system from the latest GitHub Release.
No source repository clone is required.

## Included demos

- QVET Autonomy: driver navigation, paid H3 mapping routes, radar replay,
  WorldGraph construction, enterprise coverage planning, and Solana settlement
  proof.
- QVET Traffic: an adaptive 16-intersection microscopic traffic simulation on
  an Ingolstadt OSM network.
- QVET Operations Dashboard: live queue, wait, throughput, and decision views
  for the traffic simulation.

## Supported systems

- macOS 13 or newer: Apple silicon and Intel
- Windows 10 or 11: x86-64

The first setup requires an internet connection. The installer uses an existing
Python 3.10 or newer and Node.js 22 or newer installation when available. On
Windows it can prepare missing prerequisites with Windows Package Manager.
Setup creates an isolated Python environment and installs locked web
dependencies without requiring a source repository clone.

## Start on macOS

1. Download and extract `QVET-Demo-macOS.zip`.
2. Double-click `Install QVET Demo.command` in the extracted folder.
3. Open the installed QVET Demo folder when setup completes.
4. Launch the Autonomy, Traffic, or Dashboard `.command` file.

If macOS blocks the first launch, use System Settings, Privacy & Security, then
Open Anyway.

## Start on Windows

1. Download `Install-QVET-Demo-Windows.cmd` from the latest release.
2. Double-click the installer. It downloads and extracts the complete kit to a
   stable per-user folder.
3. Launch Autonomy, Traffic, Dashboard, or Verify from the desktop shortcuts.

Do not open individual scripts from Explorer's compressed ZIP preview. Windows
otherwise runs each script from a different temporary folder. If you choose the
ZIP download, use `Extract All` first. Version 1.4.0 keeps SUMO assets safe when
the extracted path contains spaces. Every launcher recovers missing setup
automatically, and the ready marker is written only after the Python runtime and
web build both succeed.

## Package verification

Package controls:

1. Open QVET Autonomy in Driver View.
2. Compare the direct rider route with the +$2.50 coverage route.
3. Select 3D Map and play the heading-correct vehicle-follow sequence. Watch
   the balance rise from $0.00 as the vehicle crosses funded cells.
4. Switch to Earn Nearby to show 4,032 road-aligned paid mapping cells across
   greater Tbilisi. Hover any road cell to inspect its available profit,
   freshness, coverage, and last mapped date.
5. Open System Proof, then Coverage planner. Select cells directly on the city
   road network, enter the campaign budget, inspect need-weighted prices, and
   move through all 12 priority layers up to complete city-road coverage.
6. Return to QVET replay for the road-map view, expanding 360-degree sensing
   pulses, raw radar frame, vehicle frame, and persistent WorldGraph update.
7. Run the included verification launcher, then record the SUMO district and
   operations dashboard.

The extracted package includes `START-HERE.txt` with the complete walkthrough.

## Integrity and scope

Verify downloads with `SHA256SUMS.txt` from the release. The packages contain
no Git history, environment files, credentials, or private keys.

Traffic results are simulation outputs. Autonomy sensing is a deterministic
fixture replay. Neither is presented as a live municipal or fleet deployment.

Map rendering uses MapLibre GL JS and OpenStreetMap data.
