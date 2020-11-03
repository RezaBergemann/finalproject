# Minimum Viable Analysis Notes

There are two primary sources of data; first is the double digest RADseq data from various Man-of-war samples from around the world. 
The second source of data is a reference genome of a Man-of-war. Both sources of data are located on the cluster.

The main tool that will be used for this project will be ipyrad. In order to utilize the de-novo + reference assembly option of ipyrad, I will be using ipyrad v.0.7, as the most recent version does not support this assembly form. This has successfully been installed on the cluster, and has been confirmed to be working. There are 7 steps to an ipyrad analysis. The first step involves the multiplexing the raw data, and assigning it to each sample. Steps 2-5 process the data for each of the samples. Step 6 identifies orthologs and then step 7 filters the orthologs and writes the data into formatted files for further analysis. ipyrad has built in support for these further down stream analysis, but other tools can be used
