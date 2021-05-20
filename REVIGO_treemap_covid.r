

# A treemap R script produced by the REVIGO server at http://revigo.irb.hr/
# If you found REVIGO useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# author: Anton Kratz <anton.kratz@gmail.com>, RIKEN Omics Science Center, Functional Genomics Technology Team, Japan
# created: Fri, Nov 02, 2012  7:25:52 PM
# last change: Fri, Nov 09, 2012  3:20:01 PM

# -----------------------------------------------------------------------------
# If you don't have the treemap package installed, uncomment the following line:
# install.packages( "treemap" );
library(treemap) 								# treemap package by Martijn Tennekes

# Set the working directory if necessary
# setwd("C:/Users/username/workingdir");

# --------------------------------------------------------------------------
# Here is your data from REVIGO. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","freqInDbPercent","abslog10pvalue","uniqueness","dispensability","representative");
revigo.data <- rbind(c("GO:0002376","immune system process",16.463,1.9580,0.990,0.000,"immune system process"),
c("GO:0006614","SRP-dependent cotranslational protein targeting to membrane",0.537,27.9250,0.751,0.000,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0070972","protein localization to endoplasmic reticulum",0.739,21.2963,0.855,0.549,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0051234","establishment of localization",29.960,4.9602,0.878,0.536,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0071826","ribonucleoprotein complex subunit organization",1.218,4.8814,0.881,0.159,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0006810","transport",29.215,4.9108,0.858,0.502,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0016043","cellular component organization",35.684,16.0306,0.862,0.458,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0043933","macromolecular complex subunit organization",14.259,13.1098,0.877,0.344,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0072657","protein localization to membrane",2.954,8.1635,0.734,0.631,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0033036","macromolecule localization",16.624,10.2272,0.890,0.353,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0042254","ribosome biogenesis",1.835,4.8988,0.858,0.382,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0006605","protein targeting",4.010,14.7156,0.813,0.620,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0022613","ribonucleoprotein complex biogenesis",2.597,8.7700,0.869,0.144,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0070925","organelle assembly",4.345,7.4012,0.837,0.430,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0044782","cilium organization",2.141,7.2197,0.846,0.604,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0060271","cilium assembly",2.095,7.8982,0.815,0.447,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0045055","regulated exocytosis",4.299,3.1219,0.841,0.322,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0015833","peptide transport",1.529,6.9836,0.887,0.334,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0033108","mitochondrial respiratory chain complex assembly",0.525,3.3623,0.832,0.346,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0022607","cellular component assembly",15.638,13.7001,0.830,0.585,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0072594","establishment of protein localization to organelle",3.837,15.5171,0.817,0.681,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0071702","organic substance transport",15.586,2.5498,0.871,0.547,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0007010","cytoskeleton organization",6.861,1.5193,0.862,0.454,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0071705","nitrogen compound transport",4.472,5.5143,0.894,0.209,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0007005","mitochondrion organization",3.756,5.9309,0.872,0.184,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0006996","organelle organization",19.411,12.1769,0.871,0.479,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0022411","cellular component disassembly",3.035,3.9246,0.882,0.196,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0044085","cellular component biogenesis",17.149,17.7191,0.880,0.253,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0051128","regulation of cellular component organization",13.335,2.6768,0.863,0.338,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0030031","cell projection assembly",3.145,4.4916,0.830,0.638,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0034622","cellular macromolecular complex assembly",5.747,10.2043,0.826,0.620,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0030030","cell projection organization",7.963,2.9387,0.866,0.298,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0010257","NADH dehydrogenase complex assembly",0.364,2.0697,0.858,0.597,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0051641","cellular localization",14.905,19.9922,0.892,0.261,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0032981","mitochondrial respiratory chain complex I assembly",0.364,2.0697,0.838,0.597,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0032984","macromolecular complex disassembly",1.587,2.6296,0.848,0.391,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0051649","establishment of localization in cell",11.864,15.3854,0.828,0.440,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0008104","protein localization",14.414,11.6628,0.835,0.418,"SRP-dependent cotranslational protein targeting to membrane"),
c("GO:0008152","metabolic process",64.841,8.0895,0.996,0.000,"metabolism"),
c("GO:0009987","cellular process",90.329,2.5114,0.999,0.000,"cellular process"),
c("GO:0051179","localization",36.018,10.8324,0.992,0.000,"localization"),
c("GO:0051607","defense response to virus",1.327,5.1759,0.880,0.000,"defense response to virus"),
c("GO:0002444","myeloid leukocyte mediated immunity",3.133,3.0604,0.890,0.640,"defense response to virus"),
c("GO:0048585","negative regulation of response to stimulus",8.003,1.4144,0.931,0.471,"defense response to virus"),
c("GO:0002252","immune effector process",6.896,4.5833,0.912,0.501,"defense response to virus"),
c("GO:0002274","myeloid leukocyte activation",3.531,4.6623,0.867,0.393,"defense response to virus"),
c("GO:0009615","response to virus",1.771,4.0032,0.961,0.689,"defense response to virus"),
c("GO:0080134","regulation of response to stress",7.657,2.5022,0.945,0.353,"defense response to virus"),
c("GO:0071840","cellular component organization or biogenesis",36.532,19.3672,0.992,0.000,"cellular component organization or biogenesis"),
c("GO:0016032","viral process",4.091,24.0884,0.919,0.002,"viral process"),
c("GO:0044419","interspecies interaction between organisms",4.334,11.1763,0.940,0.659,"viral process"),
c("GO:0045071","negative regulation of viral genome replication",0.294,1.5109,0.912,0.678,"viral process"),
c("GO:0000184","nuclear-transcribed mRNA catabolic process, nonsense-mediated decay",0.698,22.9252,0.842,0.002,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0002181","cytoplasmic translation",0.271,8.3697,0.849,0.681,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0032268","regulation of cellular protein metabolic process",13.728,1.9019,0.883,0.478,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0051246","regulation of protein metabolic process",14.651,2.3379,0.894,0.488,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0016072","rRNA metabolic process",1.518,2.9490,0.896,0.258,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0016071","mRNA metabolic process",3.935,6.3050,0.892,0.234,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0046700","heterocycle catabolic process",2.464,6.2860,0.865,0.585,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0044248","cellular catabolic process",9.221,7.7515,0.862,0.640,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0044270","cellular nitrogen compound catabolic process",2.481,6.7281,0.849,0.500,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0044267","cellular protein metabolic process",28.505,8.9197,0.895,0.340,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0006412","translation",3.693,22.1576,0.804,0.149,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:1901564","organonitrogen compound metabolic process",13.324,9.7777,0.907,0.223,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:1901566","organonitrogen compound biosynthetic process",8.211,11.7687,0.854,0.603,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0019439","aromatic compound catabolic process",2.550,6.1484,0.864,0.588,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0043603","cellular amide metabolic process",5.488,14.8518,0.908,0.198,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:1901361","organic cyclic compound catabolic process",2.706,6.0619,0.873,0.525,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0042775","mitochondrial ATP synthesis coupled electron transport",0.554,9.5885,0.799,0.411,"nuclear-transcribed mRNA catabolism, nonsense-mediated decay"),
c("GO:0001818","negative regulation of cytokine production",1.310,2.2359,0.945,0.011,"negative regulation of cytokine production"),
c("GO:0010605","negative regulation of macromolecule metabolic process",13.410,5.3487,0.897,0.303,"negative regulation of cytokine production"),
c("GO:0009892","negative regulation of metabolic process",14.605,4.9246,0.913,0.489,"negative regulation of cytokine production"),
c("GO:0001816","cytokine production",3.745,1.4821,0.974,0.178,"negative regulation of cytokine production"),
c("GO:0055114","oxidation-reduction process",5.828,10.4199,0.922,0.039,"oxidation-reduction process"),
c("GO:0007017","microtubule-based process",3.843,3.7497,0.956,0.041,"microtubule-based process"),
c("GO:0007018","microtubule-based movement",1.477,1.7922,0.929,0.047,"microtubule-based movement"),
c("GO:0001578","microtubule bundle formation",0.456,1.4918,0.859,0.652,"microtubule-based movement"),
c("GO:0006091","generation of precursor metabolites and energy",2.129,6.0143,0.952,0.048,"generation of precursor metabolites and energy"),
c("GO:0043065","positive regulation of apoptotic process",3.393,2.2825,0.901,0.052,"positive regulation of apoptotic process"),
c("GO:0010942","positive regulation of cell death",3.606,2.4679,0.905,0.661,"positive regulation of apoptotic process"),
c("GO:0097190","apoptotic signaling pathway",3.358,1.7816,0.890,0.594,"positive regulation of apoptotic process"),
c("GO:0006915","apoptotic process",10.537,2.8059,0.904,0.688,"positive regulation of apoptotic process"),
c("GO:0001775","cell activation",7.900,3.2724,0.953,0.060,"cell activation"),
c("GO:0048519","negative regulation of biological process",26.855,8.4585,0.972,0.071,"negative regulation of biological process"),
c("GO:0008219","cell death",11.881,2.0840,0.951,0.075,"cell death"),
c("GO:0065009","regulation of molecular function",17.288,2.1372,0.976,0.086,"regulation of molecular function"),
c("GO:0044237","cellular metabolic process",59.486,8.2628,0.934,0.091,"cellular metabolism"),
c("GO:0019538","protein metabolic process",31.991,7.6140,0.925,0.184,"cellular metabolism"),
c("GO:0044238","primary metabolic process",60.306,3.0196,0.938,0.313,"cellular metabolism"),
c("GO:0009056","catabolic process",11.471,8.0128,0.952,0.113,"cellular metabolism"),
c("GO:0071704","organic substance metabolic process",62.701,3.5101,0.938,0.309,"cellular metabolism"),
c("GO:0034097","response to cytokine",4.714,1.8695,0.953,0.097,"response to cytokine"),
c("GO:0048583","regulation of response to stimulus",21.610,1.3114,0.945,0.233,"response to cytokine"),
c("GO:0070887","cellular response to chemical stimulus",15.701,2.1917,0.943,0.594,"response to cytokine"),
c("GO:0006950","response to stress",21.310,2.2528,0.960,0.156,"response to cytokine"),
c("GO:0071310","cellular response to organic substance",12.977,1.8855,0.943,0.590,"response to cytokine"),
c("GO:0010033","response to organic substance",16.515,3.4121,0.948,0.447,"response to cytokine"));

stuff <- data.frame(revigo.data);
names(stuff) <- revigo.names;

stuff$abslog10pvalue <- as.numeric( as.character(stuff$abslog10pvalue) );
stuff$freqInDbPercent <- as.numeric( as.character(stuff$freqInDbPercent) );
stuff$uniqueness <- as.numeric( as.character(stuff$uniqueness) );
stuff$dispensability <- as.numeric( as.character(stuff$dispensability) );

# by default, outputs to a PDF file
pdf( file="revigo_treemap.pdf", width=16, height=9 ) # width and height are in inches

# check the tmPlot command documentation for all possible parameters - there are a lot more
treemap(
  stuff,
  index = c("representative","description"),
  vSize = "abslog10pvalue",
  type = "categorical",
  vColor = "representative",
  title = "REVIGO Gene Ontology treemap",
  inflate.labels = FALSE,      # set this to TRUE for space-filling group labels - good for posters
  lowerbound.cex.labels = 0,   # try to draw as many labels as possible (still, some small squares may not get a label)
  bg.labels = "#CCCCCCAA",     # define background color of group labels
  # "#CCCCCC00" is fully transparent, "#CCCCCCAA" is semi-transparent grey, NA is opaque
  position.legend = "none"
)

dev.off()
