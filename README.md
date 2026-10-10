# QVET Demo Distribution

Portable, operator-facing builds of the QVET Traffic and QVET Autonomy demos.
Download the package for your operating system from the latest GitHub Release.
No source repository clone is required.

## Included demos

- QVET Autonomy: driver navigation, paid H3 mapping routes, radar replay,
  WorldGraph construction, Boreas real-sensor validation, x402 data delivery,
  and Solana settlement proof.
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
ZIP download, use `Extract All` first. Version 1.0.1 and newer detect incomplete
ZIP-preview execution, recover missing setup automatically, and create a ready
marker only after every setup step succeeds.

## Package verification

Package controls:

1. Open QVET Autonomy in Driver View.
2. Compare the direct rider route with the +$2.50 coverage route.
3. Select 3D Map and play the vehicle-follow navigation sequence.
4. Switch to Earn Nearby to show citywide paid mapping cells.
5. Open System Proof to show the four coordinate frames, Boreas capture,
   WorldGraph output, x402 delivery, and settlement flow.
6. Run the included verification launcher, then record the SUMO district and
   operations dashboard.

The extracted package includes `START-HERE.txt` with the complete walkthrough.

## Integrity and scope

Verify downloads with `SHA256SUMS.txt` from the release. The packages contain
no Git history, environment files, credentials, or private keys.

Traffic results are simulation outputs. Autonomy sensor modes are deterministic
replay and attributed Boreas dataset validation. They are not presented as a
live municipal or fleet deployment.

Map rendering uses MapLibre GL JS and OpenStreetMap data. Boreas Autonomous
Driving Dataset material is attributed under CC BY 4.0.
