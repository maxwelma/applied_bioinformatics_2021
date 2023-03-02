setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")

pdf("Site_quality_ipyrad.pdf") 
qual<- read.table("v_cardui_site_quality.lqual", header = TRUE)
plot(density(qual$QUAL), main="Site quality")
dev.off()

pdf("Nucleotide_divergence_ipyrad.pdf")
pi<- read.table("v_cardui_site_pi.sites.pi", header = TRUE)
plot(hist(pi$PI), main="Nucleotide divergence")
dev.off()

pdf("Missingnes_per_individual_ipyrad.pdf")
miss<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
plot(hist(miss$F_MISS), main="Missingnes per individual")
dev.off()

pdf("Site_mean_depth_ipyrad.pdf")
site_mean_depth<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
plot(density(site_mean_depth$MEAN_DEPTH), main="Site mean depth")
dev.off()

pdf("Missingness_per_site_ipyrad.pdf")
miss_site<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
plot(density(miss_site$F_MISS), main="Missingness per site")
dev.off()

pdf("Depth_per_site_ipyrad.pdf")
site_depth<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
plot(density(site_depth$SUM_DEPTH), main="Depth per site")
dev.off()

pdf("Inbreeding_coefficient_per_individual_ipyrad.pdf")
het<- read.table("v_cardui_het_ind.het", header = TRUE)
plot(density(het$F), main="Inbreeding coefficient per individual")
dev.off()

#How to plot these?
tstv<- read.table("v_cardui_tstv_sum.TsTv.summary", header = TRUE)
plot(density(tstv$COUNT), main="Transition transvertion ratios")


#allele frequencies, how to plot best?
freq<- read.table("v_cardui_site_freq.frq", fill=TRUE, row.names = NULL,  col.names = paste0("V",seq_len(8)))
#colnames(freq) <- colnames(freq)[2:ncol(freq)] 
freq$V5[grep("A",freq$V5)]
plot(density(freq$SUM_DEPTH), main="Allele frequencies")

A1<-data.frame(freq$V5[grep("A",freq$V5)])
A1<-lapply(A1, gsub, pattern='A:', replacement='')


