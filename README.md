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

## 📂 Repository Structure
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


## ⚙️ Installation

1. Clone the repository:
```bash
git clone https://github.com/username/dft-ml-project.git
cd dft-ml-project

conda env create -f env/environment.yml
conda activate dft-ml

🖥️ Usage
bash scripts/vasp_tools/make_encut_grid.sh --encut "380 420 460 500" --template INCAR.base
bash scripts/run_slurm/submit_encut.sh --dir studies/encut --partition compute --time 02:00:00

2. Extract energies and build tables:
python scripts/extract/parse_outcar.py --root studies/encut --out data/processed/encut_raw.csv
python scripts/extract/build_table.py --input data/processed/encut_raw.csv --out data/processed/encut_table.csv

Train ML models:
python ml/models/train.py --features data/processed/features_encut.csv --target Etot --model xgb --cv 5 --out ml/models/xgb_encut.pkl

4. Visualize results
python viz/plot_convergence.py --table data/processed/encut_table.csv --x ENCUT --y Etot --out viz/figs/encut_convergence.png

🤝 Contributing
Open issues with minimal reproducible examples.

Submit PRs with tests in tests/ and PEP8 style compliance.

Extensions to other DFT codes (QE, ABINIT) are welcome.



