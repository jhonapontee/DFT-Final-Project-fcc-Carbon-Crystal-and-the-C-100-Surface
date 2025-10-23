# Project: DFT + Machine Learning for Materials

This repository contains a reproducible workflow that integrates **Density Functional Theory (DFT)** calculations with **Machine Learning (ML)** models for analyzing structural and electronic properties of materials.  

The goal is to **automate DFT workflows on HPC clusters**, extract relevant properties (energies, band gaps, EOS, convergence studies), and train ML models for fast and reliable predictions, while maintaining scientific rigor and reproducibility.

---

## 🚀 Key Features

- **DFT Automation**  
  - Bash and Python scripts to submit and manage jobs on Slurm/PBS.  
  - Automatic KPOINTS generation and POSCAR validation.  
  - Energy extraction and convergence table building (ENCUT, KPOINTS).  

- **Machine Learning for Materials**  
  - Feature engineering from structural and electronic descriptors.  
  - Training of ML models (Random Forest, XGBoost, LightGBM).  
  - Cross-validation, error metrics (MAE, RMSE), and feature importance analysis.  

- **Scientific Visualization**  
  - Convergence and parity plots with LaTeX-style labels.  
  - Publication-ready figures for reports and papers.  

- **Reproducibility & Documentation**  
  - Cheatsheets and guides in `docs/`.  
  - Results exported in CSV and high-quality figures.  
  - Cleanup scripts to keep only essential files (INCAR, POSCAR, KPOINTS, OUTCAR, vasprun.xml).  

---


## 📁 Repository Structure

```bash
├── scripts/                   # DFT automation and job management
│   ├── run_slurm/             # Slurm job profiles and launchers
│   ├── run_pbs/               # PBS/Torque job profiles and launchers
│   ├── vasp_tools/            # KPOINTS generation, POSCAR validation
│   └── extract/               # OUTCAR/OSZICAR parsers and table builders
│
├── ml/                        # Machine Learning pipelines
│   ├── features/              # Feature engineering
│   ├── models/                # Training and saving ML models
│   └── eval/                  # Evaluation and metrics
│
├── data/                      # Raw and processed datasets
│   ├── raw/                   # Original DFT outputs
│   └── processed/             # Clean tables and ML-ready datasets
│
├── viz/                       # Visualization scripts and figures
│
├── docs/                      # Guides, cheatsheets, Overleaf templates
│
└── env/                       # Environment files (requirements.txt, environment.yml)






