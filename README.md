# Phylogenetic Biology - Final Project

## Guidelines - you can delete this section before submission

This repository is a stub for your final project. Fork it, develop your project, and submit it as a pull request. Edit/ delete the text in this readme as needed.

Some guidelines and tips:

- Use the stubs below to write up your final project. Alternatively, if you would like the writeup to be an executable document (with [knitr](http://yihui.name/knitr/), [jupytr](http://jupyter.org/), or other tools), you can create it as a separate file and put a link to it here in the readme.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![GitHub Logo](/images/logo.png)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

- Commit and push often as you work.

OK, here we go.

# Title of my project

## Introduction and Goals

Portuguese Man of War (*Physalia physalis*) are a species of siphonophore that can be found around the world in tropical and subtropical waters. Though they are the most well-known siphonophore due to their pleustonic nature and propensity to be blown ashore, there is still much unknown about them. As they spend the majority of their lives on the open ocean, it is difficult to acquire long-term visual data, and their delicate jelly-like nature makes it nearly impossible to tag them or to observe them in a laboratory setting.

Some of the most pressing questions regarding Man of War concern their life cycle, such as the length of their life and their reproductive strategies (Munro et al, 2019). A greater understanding of the population structure of these animals may provide insights into these unanswered questions. Existing phylogenetic analyses of Portuguese Man of War have revealed that even within a relatively small geographic area, there is a substantial amount of genetic diversity, suggesting that on a global scale, there could be many distinct populations (Pontin & Cruickshank, 2012).


We intend to analyze RADseq data from 32 samples from four different sites - Bermuda, Texas, Guam and South Africa -  produced by the Dunn Lab. RADseq, or restriction site associated DNA sequencing, is an efficient way to identify and score many genetic markers for further population genomics or phylogeographic studies. As such, it can provide a greater resolution than other methods which result in far fewer markers (Davey 2010). An additional benefit is that RADseq data can be assembled de novo, and so the full genome of the species of interest is not needed. More relevant to our study, RADseq has been shown to be useful for the phylogeographic and population genomic studies of zooplankton and in particular, of cnidarians (Blanco-Bercial & Bucklin, 2016, Reitzel et al, 2013).

The exact procedure that we will follow has yet to be determined, but the general process will be as follows. First, the raw RADseq must be assembled; for this we will use software like ipyrad (Eaton & Overcast 2020). Once the raw data has been assembled, either the analysis module of ipyrad or other alternative software will be used to generate phylogenies and infer population structure. In particular, we will look at the connectivity of populations in the same ocean basin, and across ocean basins.  


## Methods

The tools I used were... See analysis files at (links to analysis files).

## Results

Some results are in  ipyrad09/AssemblyBothReport.md and ipyrad09/analysis.md

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References
- Blanco‐Bercial, L. and Bucklin, A. (2016), New view of population genetics of zooplankton: RAD‐seq analysis reveals population structure of the North Atlantic planktonic copepod Centropages typicus. Mol Ecol, 25: 1566-1580. doi:10.1111/mec.13581
-  Davey, J.W, Blaxter, M.L., RADSeq: next-generation population genetics, Briefings in Functional Genomics, Volume 9, Issue 5-6, December 2010, Pages 416–423, https://doi.org/10.1093/bfgp/elq031
- Eaton, D.A. and Overcast, I., 2020. ipyrad: Interactive assembly and analysis of RADseq datasets. Bioinformatics, 36(8), pp.2592-2594.
- Munro, C., Vue, Z., Behringer, R.R. et al. Morphology and development of the Portuguese man of war, Physalia physalis. Sci Rep 9, 15522 (2019). https://doi.org/10.1038/s41598-019-51842-1
- Pontin, D.R., Cruickshank, R.H. Molecular phylogenetics of the genus Physalia (Cnidaria: Siphonophora) in New Zealand coastal waters reveals cryptic diversity. Hydrobiologia 686, 91–105 (2012). https://doi.org/10.1007/s10750-011-0994-8
- Reitzel, A.M., Herrera, S., Layden, M.J., Martindale, M.Q. and Shank, T.M. (2013), Going where traditional markers have not gone before: utility of and promise for RAD sequencing in marine invertebrate phylogeography and population genomics. Mol Ecol, 22: 2953-2970. doi:10.1111/mec.12228
