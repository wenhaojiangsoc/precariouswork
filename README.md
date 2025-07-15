# Bad Health, Bad Jobs

Repository for replication codes and data for the paper *Bad Health, Bad Jobs*, co-authored with [Linsey Edwards](https://as.nyu.edu/faculty/linsey-edwards.html), currently under review.

## Overview about the Repository

This repository hosts original raw data and the codes that clean, transform and analyze it for the final results in the paper. For replication questions, please reach out to Wenhao Jiang at `wenhao.jiang@duke.edu`.

### Data
 
We include two kinds of data to repoduce the main results. 

* `data source`: the folder includes the file `precarious.NLSY97` that contains variable names and indices to be uploaded to the [NLSY97 official website](https://www.nlsinfo.org/investigator/pages/login). Once uploaded, all variables needed in our analyses will be loaded on the website. After downloading the data, you will get the main `precarious.csv` file, along with other auxilary ones in the folder.

* `data cleaned`: the folder includes the main cleaned data, `master_01.csv`, for our analysis. We also keep the original sampling weights in `weight.csv`, which is needed for the main analysis.

### Code

We include three sets of codes.

* `01 prepare`: the three files clean the raw `precarious.csv` data and produce the final output `master_01.csv` in our analysis. Most operations we described in the paper are included in `prepare data.R`. `IPAW.R` document the approach we address missing data and attrition. See more details in the Appendix of our paper.

* `02 OLS and LDV` and `03 CLPMFE`: the two folders include the execution of our main models. For a preliminary investigation of results that is consistent with our main results based on CLPM-FE model, controls may be excluded to faciliate model convergence. 

* `04 HPC`: the folder includes the batch file to be sent to any HPC platforms. These codes and an HPC platform are needed as the CLPM-FE model we described in our paper requires about 30 hours of computation with 16 CPU cores.   

### Results

* The `results` folder includes the main estimates from the CLPM-FE model, as the original outputs are in text format from the HPC. The OLS and LDV results can be directly obtained from `R` codes in `02 OLS and LDV` directly. 


