
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")

par(mfrow=c(3,3))
pdf("histograms_ipyrad.pdf")

qual<- read.table("v_cardui_site_quality.lqual", header = TRUE)
hist(qual$QUAL, main="Site quality")

miss<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
hist(miss$F_MISS, main="Missingnes per individual")
abline(v = mean(miss$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)


barplot(miss$F_MISS, main="Missingnes per individual", names=miss$INDV,las=2 )
abline(h = 0.2, col="red", lwd=2, lty=1)


miss_site<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
hist(miss_site$F_MISS, main="Missingness per site")
abline(v = mean(miss_site$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)

site_mean_depth<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
hist(site_mean_depth$MEAN_DEPTH, main="Site mean depth",breaks = 100)
abline(v = mean(site_mean_depth$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)

site_depth<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
hist(site_depth$SUM_DEPTH, main="Depth per site",breaks = 100)
abline(v = median(site_depth$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)


het<- read.table("v_cardui_het_ind.het", header = TRUE)
hist(het$F, main="Inbreeding coefficient per individual")

dev.off()

#######################################################

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")

par(mfrow=c(3,3))
pdf("histograms_stacks.pdf")
qual<- read.table("v_cardui_site_quality.lqual", header = TRUE)
hist(qual$QUAL, main="Site quality")

miss<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
hist(miss$F_MISS, main="Missingnes per individual")
abline(v = mean(miss$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)


barplot(miss$F_MISS, main="Missingnes per individual", names=miss$INDV,las=2 )
abline(h = 0.2, col="red", lwd=2, lty=1)

miss_site<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
hist(miss_site$F_MISS, main="Missingness per site")
abline(v = mean(miss_site$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)


site_mean_depth<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
hist(site_mean_depth$MEAN_DEPTH, main="Site mean depth",breaks = 100)
abline(v = mean(site_mean_depth$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)

site_depth<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
hist(site_depth$SUM_DEPTH, main="Depth per site",breaks = 100)
abline(v = mean(site_depth$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)

het<- read.table("v_cardui_het_ind.het", header = TRUE)
hist(het$F, main="Inbreeding coefficient per individual")

dev.off()


#######################################################
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/samtools")

par(mfrow=c(3,3))
pdf("histograms_samtools.pdf")
qual<- read.table("snp_calling_21_12_13_site_quality.lqual", header = TRUE)
hist(qual$QUAL, main="Site quality")

miss<- read.table("snp_calling_21_12_13_missing_ind.imiss", header = TRUE)
hist(miss$F_MISS, main="Missingnes per individual")
abline(v = mean(miss$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)


barplot(miss$F_MISS, main="Missingnes per individual", names=miss$INDV,las=2 )
abline(h = 0.2, col="red", lwd=2, lty=1)


miss_site<- read.table("snp_calling_21_12_13_missing_site.lmiss", header = TRUE)
hist(miss_site$F_MISS, main="Missingness per site")
abline(v = mean(miss_site$F_MISS), col="blue", lwd=2, lty=1)
abline(v = 0.2, col="red", lwd=2, lty=1)

site_mean_depth<- read.table("snp_calling_21_12_13_site_mean_depth_analysis.ldepth.mean", header = TRUE)
hist(site_depth$SUM_DEPTH, main="Site mean depth",breaks = 100)
abline(v = mean(site_depth$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)


site_depth<- read.table("snp_calling_21_12_13_site_depth.ldepth", header = TRUE)
hist(site_depth$SUM_DEPTH, main="Depth per site",breaks = 100)
abline(v = mean(site_depth$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)

het<- read.table("snp_calling_21_12_13_het_ind.het", header = TRUE)
hist(het$F, main="Inbreeding coefficient per individual")
barplot(het$F, main="Inbreeding coefficient per individual", names=het$INDV,las=2 )

dev.off()