## MS Thesis: Exploring Host Response to SARS-CoV-2 Through Differential Expression Analysis

[Final paper can be found here.](https://www.google.com)


Summary:

    Cleaningdata.Rmd --> QC.Rmd --> DESeq2Analysis.Rmd --> FA_condition.Rmd --> DEpackage_comparision.Rmd
-  Cleaningdata.Rmd
    - Data loaded in, parsed, cleaned
-  QC.Rmd
    - Data normalized, ran PCA and created sample distance heatmap
-  DESeq2Analysis.Rmd
    - Differential expression analysis performed for condition, sex:condition, age:condition using DESeq2
-  FA_condition.Rmd 
    - Performed functional anylsis (over representation analysis, gene set enrichment analysis) of DE genes by condition
-  DEpackage_comparison.Rmd
    - Compared DESeq2 results to those from edgeR and limma
    
