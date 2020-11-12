# ClonesInDLCode
Replication package of "Clones in Deep Learning Code: What, Where, and Why?"

This repository contains all the data, scripts, and source codes needed to replicate our study

## Requirements
* Nicad 5.2
* Jupyter Notebook (Anaconda 3)
* Python 3.7.4

## Folder Description
Our project contains the following folder, sub-folders, and files.

### Research Questions
We have Jupyter notebooks by research questions
* RQ_1: Do code clones occur more frequently in deep learning code than traditional source code?
* RQ_2: How are code clones distributed in deep learning code in comparison to traditional source code?
* RQ_3: Do cloned and non-cloned code suffer similarly from bug-proneness in deep learning projects?
* RQ_4: Why do deep learning developers clone code?
* RQ_5: Which types of code cloning in deep learning clones are riskier?

### Shell scripts folder
In this folder, we have all the scripts shell needed to clone repositories, to get GitHub repositories' informations, and to run NiCad.
### Data folder
Data folder contains the followings:
* dlRepos.csv contains 59 deep learning repositories used in our study.
* tradRepos.csv contains 59 deep learning repositories used as a comparative data in our study.
* 6DLReposData.csv contains the selected 6 deep learning repositories to be manually analyzed.
#### Manual Analysis
This folder contains the results of the manual classification of the selected 6 repositories commits. 
#### Clone Data
The results of clones by clone type (Type 1, Type 2, and Type 3) and by project type (DL: deep learning, Trad: traditional).
In addition to bug fix and bug inducing commits data

#
contact: hadhemi.jebnoun@polymtl.ca