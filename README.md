# Workflow_proyects
Some proyects of creation and manipulation of workflows
# Primate Phylogenetic Tree Workflow

A simple bioinformatics workflow developed with **Nextflow** to process a primate phylogenetic tree using containerized tools.

## Overview

This project demonstrates a basic workflow for phylogenetic data processing. It downloads a reference tree, extracts its tip statistics, and counts the number of tips in the tree.

## Workflow

1. **Download the tree:** retrieve the reference phylogenetic tree using `wget`.
2. **Extract tip statistics:** use [`gotree`](https://github.com/evolbioinfo/gotree) to generate a table of tree-tip statistics.
3. **Count tips:** process the resulting table with Nextflow to count the number of tips.

## Technologies

- [Nextflow](https://www.nextflow.io/) — workflow orchestration
- [Docker](https://www.docker.com/) — containerized execution
- [gotree](https://github.com/evolbioinfo/gotree) — phylogenetic tree analysis
- Bash and command-line tools

## Project Structure

```text
.
├── main.nf
├── nextflow.config
└── .gitignore
```

## Running the Workflow

Requirements: Nextflow and Docker.

```bash
nextflow run main.nf
```

The workflow publishes the tip statistics to `results/tips.tsv`.

## Learning Objectives

- Build a multi-step bioinformatics workflow with Nextflow.
- Execute tools in Docker containers.
- Connect process outputs to downstream workflow steps.
- Generate and process tabular results from phylogenetic data.

