# AI-Project: Predicting Bird Mortality in Wind Farms

This repository contains an AI project focused on predicting bird mortality in wind farms using various machine learning classifiers and formal verification techniques. The project includes data analysis, neural network models, and SMT-LIB encodings for verifying model behaviors.

## Table of Contents
- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Models](#models)
- [Data](#data)
- [Contributing](#contributing)
- [License](#license)

## Overview
The project aims to predict and analyze bird mortality incidents in wind farms. It employs machine learning techniques to classify bird behaviors (e.g., flying vs. perching) and mortality risks, followed by formal verification using SMT solvers to ensure model reliability and safety.

Key components:
- Data preprocessing and feature engineering
- Neural network training for mortality prediction
- SMT-LIB encodings for neural network verification
- Jupyter notebook for analysis and experimentation

## Repository Structure
```
.
├── README.md
├── Data/
│   └── (Data Set Files)
|   └── (Original Published Report)
├── Models/
│   ├── ai_project4.ipynb          # Main analysis notebook
│   ├── flyingvsperching.smt2      # SMT encoding for flying vs. perching classification
│   ├── mortality_neural_network.smt2  # SMT encoding for mortality prediction neural network
│   └── Final_Analysis/
│       └── (Final results)
```

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/AI-Project.git
   cd AI-Project
   ```

2. Install dependencies (assuming Python environment):
   ```sh
   pip install -r requirements.txt
   ```
   (Note: Create a `requirements.txt` file with necessary packages like `numpy`, `pandas`, `scikit-learn`, `tensorflow`, etc., based on the notebook.)

3. For SMT verification, ensure you have an SMT solver like Z3 installed:
   ```sh
   # Example for Z3
   pip install z3-solver
   ```

## Usage
1. **Data Analysis**: Open `Models/ai_project4.ipynb` in Jupyter Notebook to explore data, train models, and perform analysis.

2. **Running SMT Verification**:
   - For flying vs. perching: Run the SMT file with a solver, e.g., `z3 Models/flyingvsperching.smt2`
   - For mortality network: Similarly, `z3 Models/mortality_neural_network.smt2`

3. **Custom Queries**: Modify the SMT files to add assertions for specific verification tasks.

## Models
- **Neural Network for Mortality**: Encoded in `Models/mortality_neural_network.smt2` with 16-8 neuron layers using ReLU activations.
- **Flying vs. Perching Classifier**: Simple 2-neuron hidden layer model in `Models/flyingvsperching.smt2`.
- **Notebook Analysis**: `ai_project4.ipynb` contains the training and evaluation code.

## Data
The `Data/` directory should contain the dataset used for training (e.g., bird observation data, wind farm parameters). Ensure data is preprocessed as per the notebook requirements. (Currently empty; add your datasets here.)

## Contributing
1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -am 'Add feature'`
4. Push to branch: `git push origin feature-name`
5. Submit a pull request.

