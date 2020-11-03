# Minimum Viable Analysis Notes
Reza Bergemann - 2 November 2020
## Data
There are two primary sources of data; first is the double digest RADseq data from various Man-of-war samples from around the world. 
The second source of data is a reference genome of a Man-of-war. Both sources of data are located on the cluster.

## Tools
The main tool that will be used for this project will be ipyrad. In order to utilize the de-novo + reference assembly option of ipyrad, I will be using ipyrad v.0.7, as the most recent version does not support this assembly form. This has successfully been installed on the cluster, and has been confirmed to be working. There are 7 steps to an ipyrad analysis. The first step involves the multiplexing the raw data, and assigning it to each sample. Steps 2-5 process the data for each of the samples. Step 6 identifies orthologs and then step 7 filters the orthologs and writes the data into formatted files for further analysis. ipyrad has built in support for these further down stream analysis, but the outputted data can also be used directly with other tools. 

So far I have managed to get to step 3 with a complete data set. Step 3, however, is the most computationally intensive step that takes upto a week to complete on the cluster, and I have run into an error with this step, that I am currently working on fixing. Should it prove too challenging to fix this issue, or it will be too time consuming, Kirsten Dion has successfully run through all seven steps with a complete data set using the reference assembly method on the cluster, and so her process can be repeated. 

For examining population structure, I intend to use the STRUCTURE toolkit built into ipyrad.

## Results (so far)

The results of the analyses I have managed to complete are relatively large files/sets of files that are not suitable for uploading to github, and are located on the cluster. The scripts for all the analyses are located in this repository in the ipyrad directory. The parameters for the two different sets of analysis, one with all samples, and one with all samples from Bermuda are also located in the ipyrad directory.
