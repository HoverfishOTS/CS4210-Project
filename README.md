# Behavioral Network Intrusion Detection

This repository contains the source code and methodology for evaluating machine learning algorithms on the UNSW-NB15 dataset for CS 4210.

## Project Overview
Traditional signature-based intrusion detection systems struggle to identify zero-day attacks. This project evaluates the performance of supervised (XGBoost, Random Forest, MLP) and unsupervised (Isolation Forest) machine learning models in identifying malicious network traffic using behavioral flow metrics.

## Prerequisites
This project utilizes a containerized Jupyter environment to ensure reproducibility. You must have the following installed:
- Docker
- Docker Compose

## Setup and Installation
1. Clone this repository.
2. Download the UNSW-NB15 dataset (`UNSW_NB15_training-set.csv` and `UNSW_NB15_testing-set.csv`) and place the files into the `data/` directory.
3. Build and launch the Docker container:
   ```bash
   docker compose up --build -d
   ```
4. Access the Jupyter Lab environment by navigating to `http://localhost:8888` in your browser.
5. Log in using the configured password: `cs4210`

## Repository Structure
- `data/`: Directory for the raw UNSW-NB15 dataset files.
- `project.ipynb`: Main Jupyter notebook containing exploratory data analysis, the data stratification and preprocessing pipeline, and model training loops.
- `Dockerfile`: Specifications for the Python 3.11-slim environment.
- `docker-compose.yaml`: Service definition and volume mapping.
- `requirements.txt`: Required Python dependencies (pandas, scikit-learn, xgboost, etc.).
