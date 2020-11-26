# Masked Reference Assembly (all samples) Report

## Parameters:

```python
------- ipyrad params file (v.0.9.62)-------------------------------------------
phys_both                      ## [0] [assembly_name]: Assembly name. Used to name output directories for assembly steps
/gpfs/ysm/scratch60/dunn/rb956/finalproject/ipyrad09 ## [1] [project_dir]: Project dir (made in curdir if not present)
Merged: phys_idx1, phys_idx3   ## [2] [raw_fastq_path]: Location of raw non-demultiplexed fastq files
Merged: phys_idx1, phys_idx3   ## [3] [barcodes_path]: Location of barcodes file
Merged: phys_idx1, phys_idx3   ## [4] [sorted_fastq_path]: Location of demultiplexed/sorted fastq files
reference                      ## [5] [assembly_method]: Assembly method (denovo, reference)
/gpfs/ysm/scratch60/dunn/rb956/finalproject/ipyrad09/reference/physalia_pilonPolished.hardMask.fa ## [6] [reference_sequence]: Location of reference sequence file
pairddrad                      ## [7] [datatype]: Datatype (see docs): rad, gbs, ddrad, etc.
CATG, AATT                     ## [8] [restriction_overhang]: Restriction overhang (cut1,) or (cut1, cut2)
5                              ## [9] [max_low_qual_bases]: Max low quality base calls (Q<20) in a read
30                             ## [10] [phred_Qscore_offset]: phred Q score offset (33 is default and very standard)
6                              ## [11] [mindepth_statistical]: Min depth for statistical base calling
6                              ## [12] [mindepth_majrule]: Min depth for majority-rule base calling
10000                          ## [13] [maxdepth]: Max cluster depth within samples
0.85                           ## [14] [clust_threshold]: Clustering threshold for de novo assembly
1                              ## [15] [max_barcode_mismatch]: Max number of allowable mismatches in barcodes
2                              ## [16] [filter_adapters]: Filter for adapters/primers (1 or 2=stricter)
35                             ## [17] [filter_min_trim_len]: Min length of reads after adapter trim
2                              ## [18] [max_alleles_consens]: Max alleles per site in consensus sequences
0.05                           ## [19] [max_Ns_consens]: Max N's (uncalled bases) in consensus
0.05                           ## [20] [max_Hs_consens]: Max Hs (heterozygotes) in consensus
4                              ## [21] [min_samples_locus]: Min # samples per locus for output
0.2                            ## [22] [max_SNPs_locus]: Max # SNPs per locus
5                              ## [23] [max_Indels_locus]: Max # of indels per locus
0.5                            ## [24] [max_shared_Hs_locus]: Max # heterozygous sites per locus
4, 0, 8, 0                     ## [25] [trim_reads]: Trim raw read edges (R1>, <R1, R2>, <R2) (see docs)
0, 0, 0, 0                     ## [26] [trim_loci]: Trim locus edges (see docs) (R1>, <R1, R2>, <R2)
p, s, l                        ## [27] [output_formats]: Output formats (see docs)
                               ## [28] [pop_assign_file]: Path to population assignment file
                               ## [29] [reference_as_filter]: Reads mapped to this reference are removed in step 3
```

## Results


```python
from IPython.display import display, Markdown
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
```

### Tables
Table 1: Reference-based Assembly Results


```python
assembly = pd.read_csv("assembly_both_stats.csv", header=0, index_col = 0)
assembly = assembly.drop(columns = ['state', 'reads_raw', 'refseq_unmapped_reads'])
assembly
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>reads_passed_filter</th>
      <th>refseq_mapped_reads</th>
      <th>clusters_total</th>
      <th>clusters_hidepth</th>
      <th>hetero_est</th>
      <th>error_est</th>
      <th>reads_consens</th>
      <th>loci_in_assembly</th>
    </tr>
    <tr>
      <th>sample</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>13_TX2016_043</th>
      <td>2276699</td>
      <td>590406</td>
      <td>203003</td>
      <td>10849</td>
      <td>0.015853</td>
      <td>0.010342</td>
      <td>5782</td>
      <td>3895</td>
    </tr>
    <tr>
      <th>42_TX2016_046</th>
      <td>2621504</td>
      <td>262858</td>
      <td>99758</td>
      <td>4305</td>
      <td>0.012114</td>
      <td>0.009876</td>
      <td>3110</td>
      <td>2236</td>
    </tr>
    <tr>
      <th>59_TX2016_048</th>
      <td>2503578</td>
      <td>237785</td>
      <td>93409</td>
      <td>3752</td>
      <td>0.010275</td>
      <td>0.011022</td>
      <td>2622</td>
      <td>1893</td>
    </tr>
    <tr>
      <th>6_TX2017_027</th>
      <td>1410321</td>
      <td>629930</td>
      <td>216153</td>
      <td>12053</td>
      <td>0.016929</td>
      <td>0.010515</td>
      <td>6341</td>
      <td>3964</td>
    </tr>
    <tr>
      <th>82_TX2016_049</th>
      <td>411433</td>
      <td>90606</td>
      <td>33984</td>
      <td>1540</td>
      <td>0.010552</td>
      <td>0.009660</td>
      <td>1282</td>
      <td>907</td>
    </tr>
    <tr>
      <th>8_TX2017_028</th>
      <td>11371391</td>
      <td>1762685</td>
      <td>436346</td>
      <td>38193</td>
      <td>0.020348</td>
      <td>0.010031</td>
      <td>16997</td>
      <td>8083</td>
    </tr>
    <tr>
      <th>Bermuda_100</th>
      <td>13232645</td>
      <td>779220</td>
      <td>191361</td>
      <td>13577</td>
      <td>0.010553</td>
      <td>0.007429</td>
      <td>9722</td>
      <td>6183</td>
    </tr>
    <tr>
      <th>Bermuda_103</th>
      <td>2886892</td>
      <td>719567</td>
      <td>160256</td>
      <td>11729</td>
      <td>0.012236</td>
      <td>0.007638</td>
      <td>7757</td>
      <td>5431</td>
    </tr>
    <tr>
      <th>Bermuda_15</th>
      <td>2586881</td>
      <td>457198</td>
      <td>120439</td>
      <td>8626</td>
      <td>0.012143</td>
      <td>0.007070</td>
      <td>5641</td>
      <td>3928</td>
    </tr>
    <tr>
      <th>Bermuda_19</th>
      <td>1488934</td>
      <td>593382</td>
      <td>190964</td>
      <td>10826</td>
      <td>0.022148</td>
      <td>0.010936</td>
      <td>4390</td>
      <td>2200</td>
    </tr>
    <tr>
      <th>Bermuda_28</th>
      <td>5466992</td>
      <td>324328</td>
      <td>115132</td>
      <td>5447</td>
      <td>0.014018</td>
      <td>0.009286</td>
      <td>3339</td>
      <td>2217</td>
    </tr>
    <tr>
      <th>Bermuda_30</th>
      <td>2905831</td>
      <td>670183</td>
      <td>163859</td>
      <td>11714</td>
      <td>0.013441</td>
      <td>0.007960</td>
      <td>6880</td>
      <td>4669</td>
    </tr>
    <tr>
      <th>Bermuda_54</th>
      <td>3883780</td>
      <td>290566</td>
      <td>114925</td>
      <td>4860</td>
      <td>0.015167</td>
      <td>0.011542</td>
      <td>2753</td>
      <td>1783</td>
    </tr>
    <tr>
      <th>Bermuda_55</th>
      <td>6546158</td>
      <td>1530619</td>
      <td>313869</td>
      <td>30146</td>
      <td>0.018823</td>
      <td>0.006847</td>
      <td>15056</td>
      <td>8339</td>
    </tr>
    <tr>
      <th>Bermuda_63</th>
      <td>1784583</td>
      <td>488101</td>
      <td>124526</td>
      <td>8340</td>
      <td>0.011183</td>
      <td>0.009127</td>
      <td>4987</td>
      <td>3574</td>
    </tr>
    <tr>
      <th>Bermuda_65</th>
      <td>2966949</td>
      <td>412329</td>
      <td>127306</td>
      <td>7892</td>
      <td>0.011476</td>
      <td>0.008933</td>
      <td>5348</td>
      <td>3822</td>
    </tr>
    <tr>
      <th>Bermuda_67</th>
      <td>6629904</td>
      <td>905787</td>
      <td>210977</td>
      <td>19199</td>
      <td>0.012225</td>
      <td>0.007461</td>
      <td>13033</td>
      <td>6515</td>
    </tr>
    <tr>
      <th>Bermuda_68</th>
      <td>3966491</td>
      <td>619371</td>
      <td>187468</td>
      <td>11088</td>
      <td>0.013569</td>
      <td>0.009433</td>
      <td>6487</td>
      <td>4569</td>
    </tr>
    <tr>
      <th>Bermuda_69</th>
      <td>8980480</td>
      <td>885365</td>
      <td>238693</td>
      <td>16022</td>
      <td>0.014360</td>
      <td>0.008310</td>
      <td>9339</td>
      <td>6194</td>
    </tr>
    <tr>
      <th>Bermuda_79</th>
      <td>3433656</td>
      <td>271141</td>
      <td>108421</td>
      <td>4103</td>
      <td>0.013827</td>
      <td>0.012212</td>
      <td>2428</td>
      <td>1558</td>
    </tr>
    <tr>
      <th>Bermuda_8</th>
      <td>1889715</td>
      <td>609756</td>
      <td>145454</td>
      <td>10556</td>
      <td>0.012896</td>
      <td>0.007998</td>
      <td>6703</td>
      <td>4732</td>
    </tr>
    <tr>
      <th>Bermuda_80</th>
      <td>10137179</td>
      <td>457497</td>
      <td>159280</td>
      <td>8152</td>
      <td>0.011536</td>
      <td>0.010488</td>
      <td>5069</td>
      <td>3426</td>
    </tr>
    <tr>
      <th>Bermuda_81</th>
      <td>1754828</td>
      <td>708054</td>
      <td>178380</td>
      <td>12500</td>
      <td>0.014281</td>
      <td>0.009211</td>
      <td>6936</td>
      <td>4557</td>
    </tr>
    <tr>
      <th>Bermuda_83</th>
      <td>2541077</td>
      <td>747667</td>
      <td>176898</td>
      <td>12892</td>
      <td>0.014463</td>
      <td>0.007027</td>
      <td>7599</td>
      <td>5229</td>
    </tr>
    <tr>
      <th>Bermuda_84</th>
      <td>3211476</td>
      <td>664025</td>
      <td>198775</td>
      <td>11031</td>
      <td>0.012201</td>
      <td>0.009674</td>
      <td>6930</td>
      <td>4970</td>
    </tr>
    <tr>
      <th>Bermuda_85</th>
      <td>1709969</td>
      <td>327186</td>
      <td>107137</td>
      <td>5721</td>
      <td>0.010653</td>
      <td>0.009438</td>
      <td>4273</td>
      <td>3140</td>
    </tr>
    <tr>
      <th>Bermuda_94</th>
      <td>3465535</td>
      <td>359492</td>
      <td>115528</td>
      <td>6213</td>
      <td>0.011000</td>
      <td>0.008792</td>
      <td>4422</td>
      <td>3336</td>
    </tr>
    <tr>
      <th>Guam_104460</th>
      <td>6929513</td>
      <td>448564</td>
      <td>90296</td>
      <td>7191</td>
      <td>0.014548</td>
      <td>0.007500</td>
      <td>5865</td>
      <td>3000</td>
    </tr>
    <tr>
      <th>Guam_104461</th>
      <td>6286474</td>
      <td>356079</td>
      <td>85791</td>
      <td>5334</td>
      <td>0.014680</td>
      <td>0.008895</td>
      <td>4184</td>
      <td>2303</td>
    </tr>
    <tr>
      <th>Guam_104464</th>
      <td>3824148</td>
      <td>356916</td>
      <td>72260</td>
      <td>5287</td>
      <td>0.014448</td>
      <td>0.007357</td>
      <td>4359</td>
      <td>2344</td>
    </tr>
    <tr>
      <th>Guam_104465</th>
      <td>12706334</td>
      <td>811268</td>
      <td>160025</td>
      <td>13003</td>
      <td>0.016428</td>
      <td>0.007687</td>
      <td>9585</td>
      <td>4235</td>
    </tr>
    <tr>
      <th>South_Africa</th>
      <td>6766971</td>
      <td>466603</td>
      <td>88315</td>
      <td>5621</td>
      <td>0.015264</td>
      <td>0.007200</td>
      <td>4250</td>
      <td>1770</td>
    </tr>
  </tbody>
</table>
</div>



Table 2: Reference-based Assembly Summary States


```python
assembly.describe().drop(index = "count").reset_index().rename(columns = {"index":"stat"})
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>stat</th>
      <th>reads_passed_filter</th>
      <th>refseq_mapped_reads</th>
      <th>clusters_total</th>
      <th>clusters_hidepth</th>
      <th>hetero_est</th>
      <th>error_est</th>
      <th>reads_consens</th>
      <th>loci_in_assembly</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>mean</td>
      <td>4.643073e+06</td>
      <td>5.885792e+05</td>
      <td>157155.875000</td>
      <td>10555.062500</td>
      <td>0.013864</td>
      <td>0.008966</td>
      <td>6358.406250</td>
      <td>3906.312500</td>
    </tr>
    <tr>
      <th>1</th>
      <td>std</td>
      <td>3.422796e+06</td>
      <td>3.449160e+05</td>
      <td>76441.918347</td>
      <td>7412.785041</td>
      <td>0.002829</td>
      <td>0.001455</td>
      <td>3534.143341</td>
      <td>1840.792474</td>
    </tr>
    <tr>
      <th>2</th>
      <td>min</td>
      <td>4.114330e+05</td>
      <td>9.060600e+04</td>
      <td>33984.000000</td>
      <td>1540.000000</td>
      <td>0.010275</td>
      <td>0.006847</td>
      <td>1282.000000</td>
      <td>907.000000</td>
    </tr>
    <tr>
      <th>3</th>
      <td>25%</td>
      <td>2.446858e+06</td>
      <td>3.567068e+05</td>
      <td>108100.000000</td>
      <td>5577.500000</td>
      <td>0.011969</td>
      <td>0.007604</td>
      <td>4267.250000</td>
      <td>2286.250000</td>
    </tr>
    <tr>
      <th>4</th>
      <td>50%</td>
      <td>3.322566e+06</td>
      <td>5.392535e+05</td>
      <td>152367.000000</td>
      <td>9591.000000</td>
      <td>0.013698</td>
      <td>0.009030</td>
      <td>5711.500000</td>
      <td>3858.500000</td>
    </tr>
    <tr>
      <th>5</th>
      <td>75%</td>
      <td>6.567094e+06</td>
      <td>7.109322e+05</td>
      <td>191063.250000</td>
      <td>12164.750000</td>
      <td>0.014802</td>
      <td>0.009915</td>
      <td>7101.750000</td>
      <td>4791.500000</td>
    </tr>
    <tr>
      <th>6</th>
      <td>max</td>
      <td>1.323264e+07</td>
      <td>1.762685e+06</td>
      <td>436346.000000</td>
      <td>38193.000000</td>
      <td>0.022148</td>
      <td>0.012212</td>
      <td>16997.000000</td>
      <td>8339.000000</td>
    </tr>
  </tbody>
</table>
</div>




```python
tlens = pd.read_csv("phys_both_consens/TLENs.csv",header=None, names =["Template", "Sample", "Obs_TLEN"])
tlens.describe().drop(index = "count").reset_index().rename(columns = {"index":"stat"}).se
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>index</th>
      <th>Template</th>
      <th>Obs_TLEN</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>mean</td>
      <td>4131.187734</td>
      <td>377.954804</td>
    </tr>
    <tr>
      <th>1</th>
      <td>std</td>
      <td>3398.281958</td>
      <td>357.845068</td>
    </tr>
    <tr>
      <th>2</th>
      <td>min</td>
      <td>1.000000</td>
      <td>35.000000</td>
    </tr>
    <tr>
      <th>3</th>
      <td>25%</td>
      <td>1600.000000</td>
      <td>101.000000</td>
    </tr>
    <tr>
      <th>4</th>
      <td>50%</td>
      <td>3317.000000</td>
      <td>415.000000</td>
    </tr>
    <tr>
      <th>5</th>
      <td>75%</td>
      <td>5635.000000</td>
      <td>504.000000</td>
    </tr>
    <tr>
      <th>6</th>
      <td>max</td>
      <td>16997.000000</td>
      <td>3137.000000</td>
    </tr>
  </tbody>
</table>
</div>




```python
tlens_pivot = tlens.pivot_table(columns = ["Sample"], values = ["Obs_TLEN"], index = ["Template"])
tlens_pivot.columns = assembly.index

tlens_pivot_stats = tlens_pivot.describe().transpose().reset_index()
tlens_pivot_stats
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>sample</th>
      <th>count</th>
      <th>mean</th>
      <th>std</th>
      <th>min</th>
      <th>25%</th>
      <th>50%</th>
      <th>75%</th>
      <th>max</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>13_TX2016_043</td>
      <td>5782.0</td>
      <td>328.951574</td>
      <td>354.429483</td>
      <td>35.0</td>
      <td>72.00</td>
      <td>287.0</td>
      <td>486.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>42_TX2016_046</td>
      <td>3110.0</td>
      <td>447.880386</td>
      <td>404.640167</td>
      <td>35.0</td>
      <td>185.25</td>
      <td>471.0</td>
      <td>515.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>59_TX2016_048</td>
      <td>2622.0</td>
      <td>427.740656</td>
      <td>381.206150</td>
      <td>35.0</td>
      <td>143.00</td>
      <td>459.0</td>
      <td>513.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>6_TX2017_027</td>
      <td>6341.0</td>
      <td>310.996688</td>
      <td>350.308142</td>
      <td>35.0</td>
      <td>71.00</td>
      <td>209.0</td>
      <td>476.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>82_TX2016_049</td>
      <td>1282.0</td>
      <td>512.560062</td>
      <td>427.567489</td>
      <td>35.0</td>
      <td>386.00</td>
      <td>485.5</td>
      <td>527.0</td>
      <td>3127.0</td>
    </tr>
    <tr>
      <th>5</th>
      <td>8_TX2017_028</td>
      <td>16997.0</td>
      <td>315.339060</td>
      <td>346.665598</td>
      <td>35.0</td>
      <td>79.00</td>
      <td>244.0</td>
      <td>451.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>6</th>
      <td>Bermuda_100</td>
      <td>9722.0</td>
      <td>431.066962</td>
      <td>314.744457</td>
      <td>35.0</td>
      <td>359.25</td>
      <td>446.0</td>
      <td>503.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>7</th>
      <td>Bermuda_103</td>
      <td>7757.0</td>
      <td>419.117829</td>
      <td>359.529713</td>
      <td>35.0</td>
      <td>143.00</td>
      <td>454.0</td>
      <td>514.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>8</th>
      <td>Bermuda_15</td>
      <td>5641.0</td>
      <td>395.194646</td>
      <td>351.770735</td>
      <td>35.0</td>
      <td>125.00</td>
      <td>427.0</td>
      <td>511.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>9</th>
      <td>Bermuda_19</td>
      <td>4390.0</td>
      <td>190.771071</td>
      <td>409.903404</td>
      <td>35.0</td>
      <td>50.00</td>
      <td>73.0</td>
      <td>137.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>10</th>
      <td>Bermuda_28</td>
      <td>3339.0</td>
      <td>418.286613</td>
      <td>424.549689</td>
      <td>35.0</td>
      <td>96.00</td>
      <td>443.0</td>
      <td>521.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>11</th>
      <td>Bermuda_30</td>
      <td>6880.0</td>
      <td>365.625000</td>
      <td>374.783218</td>
      <td>35.0</td>
      <td>80.00</td>
      <td>410.0</td>
      <td>513.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>12</th>
      <td>Bermuda_54</td>
      <td>2753.0</td>
      <td>371.334181</td>
      <td>424.610530</td>
      <td>35.0</td>
      <td>70.00</td>
      <td>361.0</td>
      <td>509.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>13</th>
      <td>Bermuda_55</td>
      <td>15056.0</td>
      <td>321.956296</td>
      <td>344.041420</td>
      <td>35.0</td>
      <td>74.00</td>
      <td>262.0</td>
      <td>483.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>14</th>
      <td>Bermuda_63</td>
      <td>4987.0</td>
      <td>376.940846</td>
      <td>397.516760</td>
      <td>35.0</td>
      <td>84.00</td>
      <td>413.0</td>
      <td>515.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>15</th>
      <td>Bermuda_65</td>
      <td>5348.0</td>
      <td>402.989716</td>
      <td>338.294270</td>
      <td>35.0</td>
      <td>126.00</td>
      <td>460.0</td>
      <td>522.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>16</th>
      <td>Bermuda_67</td>
      <td>13033.0</td>
      <td>435.751400</td>
      <td>331.478608</td>
      <td>35.0</td>
      <td>213.00</td>
      <td>479.0</td>
      <td>525.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>17</th>
      <td>Bermuda_68</td>
      <td>6487.0</td>
      <td>368.608756</td>
      <td>373.566136</td>
      <td>35.0</td>
      <td>86.00</td>
      <td>409.0</td>
      <td>507.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>18</th>
      <td>Bermuda_69</td>
      <td>9339.0</td>
      <td>357.884998</td>
      <td>336.989104</td>
      <td>35.0</td>
      <td>91.00</td>
      <td>410.0</td>
      <td>492.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>19</th>
      <td>Bermuda_79</td>
      <td>2428.0</td>
      <td>387.898682</td>
      <td>436.542009</td>
      <td>35.0</td>
      <td>75.75</td>
      <td>382.0</td>
      <td>512.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>20</th>
      <td>Bermuda_8</td>
      <td>6703.0</td>
      <td>375.664180</td>
      <td>360.835600</td>
      <td>35.0</td>
      <td>99.00</td>
      <td>420.0</td>
      <td>514.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>21</th>
      <td>Bermuda_80</td>
      <td>5069.0</td>
      <td>400.898599</td>
      <td>379.416251</td>
      <td>35.0</td>
      <td>104.00</td>
      <td>436.0</td>
      <td>508.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>22</th>
      <td>Bermuda_81</td>
      <td>6936.0</td>
      <td>338.637687</td>
      <td>385.079712</td>
      <td>35.0</td>
      <td>75.00</td>
      <td>250.0</td>
      <td>502.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>23</th>
      <td>Bermuda_83</td>
      <td>7599.0</td>
      <td>359.425188</td>
      <td>368.306002</td>
      <td>35.0</td>
      <td>86.50</td>
      <td>394.0</td>
      <td>506.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>24</th>
      <td>Bermuda_84</td>
      <td>6930.0</td>
      <td>379.326696</td>
      <td>328.911896</td>
      <td>35.0</td>
      <td>128.00</td>
      <td>419.5</td>
      <td>498.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>25</th>
      <td>Bermuda_85</td>
      <td>4273.0</td>
      <td>447.263281</td>
      <td>359.050424</td>
      <td>35.0</td>
      <td>308.00</td>
      <td>469.0</td>
      <td>517.0</td>
      <td>3133.0</td>
    </tr>
    <tr>
      <th>26</th>
      <td>Bermuda_94</td>
      <td>4422.0</td>
      <td>431.235640</td>
      <td>341.910455</td>
      <td>35.0</td>
      <td>255.00</td>
      <td>463.0</td>
      <td>514.0</td>
      <td>3130.0</td>
    </tr>
    <tr>
      <th>27</th>
      <td>Guam_104460</td>
      <td>5865.0</td>
      <td>432.878431</td>
      <td>303.075805</td>
      <td>35.0</td>
      <td>335.00</td>
      <td>445.0</td>
      <td>506.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>28</th>
      <td>Guam_104461</td>
      <td>4184.0</td>
      <td>434.890774</td>
      <td>344.967598</td>
      <td>35.0</td>
      <td>269.00</td>
      <td>445.0</td>
      <td>505.0</td>
      <td>3136.0</td>
    </tr>
    <tr>
      <th>29</th>
      <td>Guam_104464</td>
      <td>4359.0</td>
      <td>446.582014</td>
      <td>348.107894</td>
      <td>35.0</td>
      <td>294.00</td>
      <td>453.0</td>
      <td>513.0</td>
      <td>3135.0</td>
    </tr>
    <tr>
      <th>30</th>
      <td>Guam_104465</td>
      <td>9585.0</td>
      <td>393.382055</td>
      <td>297.619178</td>
      <td>35.0</td>
      <td>197.00</td>
      <td>413.0</td>
      <td>481.0</td>
      <td>3137.0</td>
    </tr>
    <tr>
      <th>31</th>
      <td>South_Africa</td>
      <td>4250.0</td>
      <td>391.533176</td>
      <td>316.652781</td>
      <td>35.0</td>
      <td>156.00</td>
      <td>420.0</td>
      <td>498.0</td>
      <td>3137.0</td>
    </tr>
  </tbody>
</table>
</div>



### Figures:


```python
fig, [ax1, ax2] = plt.subplots(figsize=(16,24),nrows = 2)
ypos = np.arange(len(assembly)) + 1

ax1.hlines(ypos, 0, assembly["reads_passed_filter"], color='lightblue')  # Stems
ax1.plot(assembly["reads_passed_filter"], ypos, 'o')  # Stem ends
ax1.set_yticks(ypos)
ax1.set_yticklabels(assembly.index)

ax1.set_ylabel("Sample ID")
ax1.set_xlabel("Reads Passed Filter")

ax2.hlines(ypos, 0, assembly["reads_consens"], color='lightblue')  # Stems
ax2.plot(assembly["reads_consens"], ypos, 'o')  # Stem ends
ax2.set_yticks(ypos)
ax2.set_yticklabels(assembly.index)

ax2.set_ylabel("Sample ID")
ax2.set_xlabel("Consensus Reads")



```




    Text(0.5, 0, 'Consensus Reads')




    
![png](AssemblyBothReport_files/AssemblyBothReport_11_1.png)
    



```python
xpos = np.arange(len(assembly.index))

fig, ax = plt.subplots(figsize = (16,12))

ax.bar(xpos, tlens_pivot_stats['mean'])
ax.set_xticks(xpos)
ax.set_xticklabels(assembly.index)
plt.xticks(rotation=45) 

ax.set_xlabel("Sample ID")
ax.set_ylabel("Template Length")
```




    Text(0, 0.5, 'Template Length')




    
![png](AssemblyBothReport_files/AssemblyBothReport_12_1.png)
    

