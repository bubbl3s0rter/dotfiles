<<<<<<< HEAD
# dotfiles
=======
# Workstation State & Dotfiles

Systematic configuration management for a hybrid Windows 11 (Host) and NixOS (WSL2/Remote) environment.

## 🛠 Hardware Profile
- **Model:** Lenovo Yoga
- **CPU:** AMD Ryzen 5 Pro
- **RAM:** 16GB
- **Target OS:** Windows 11 / NixOS (WSL2)

## 🏗 Architecture
This repository utilizes a dual-layer management strategy:
1. **Chezmoi:** Manages Windows-native configurations (PowerShell, CMD, .wslconfig) and cross-platform templates.
2. **Nix/Home-Manager:** (Planned) Manages declarative system state and package management for NixOS instances.

## 📂 Logical Structure
- `dot_documents/PowerShell/`: PowerShell `$PROFILE` configuration.
- `dot_shell_init.cmd`: CMD aliases and initialization.
- `dot_wslconfig`: Global WSL2 resource constraints (8GB RAM / 4 Cores).
- `.chezmoi.toml.tmpl`: OS-aware configuration logic.

## 🚀 Deployment

### Windows Setup
1. Install Chezmoi: `winget install chezmoi`
2. Initialize: `chezmoi init https://github.com/<your-username>/dotfiles.git`
3. Apply: `chezmoi apply`

### WSL (NixOS) Setup
1. Install Chezmoi: `nix-env -iA nixos.chezmoi`
2. Initialize: `chezmoi init https://github.com/<your-username>/dotfiles.git`
3. Apply: `chezmoi apply`

## ⚖️ Resource Constraints (`.wslconfig`)
Optimized for 16GB Host RAM:
- Memory: 8GB
- Processors: 4
- Networking: Mirrored
- DNS Tunneling: Enabled
>>>>>>> 2cf87eb (Add documentation for hardware and architecture)
