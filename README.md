# QVET Demo Distribution

Portable builds of the QVET Traffic and QVET Autonomy demos.
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
ZIP download, use `Extract All` first. Version 1.5.0 keeps SUMO assets safe when
the extracted path contains spaces. Every launcher recovers missing setup
automatically, and the ready marker is written only after the Python runtime and
web build both succeed.

## Package verification

Run `Verify QVET Demo` after setup. It validates both SUMO scenarios, report
generation, the telemetry stream handshake, and the local Autonomy route. The
extracted package includes `START-HERE.txt` with controls for each demo.

## Integrity and scope

Verify downloads with `SHA256SUMS.txt` from the release. The packages contain
no Git history, environment files, credentials, or private keys.

Traffic results are simulation outputs. Autonomy sensing is a deterministic
fixture replay. Neither is presented as a live municipal or fleet deployment.

Map rendering uses MapLibre GL JS and OpenStreetMap data.
