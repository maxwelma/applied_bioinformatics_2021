
#side by side plots
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")

qual_ipyrad<- read.table("v_cardui_site_quality.lqual", header = TRUE)
cutoff=500
miss_ipyrad<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
miss_site_ipyrad<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
site_mean_depth_ipyrad<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_ipyrad_small <- site_mean_depth_ipyrad[site_mean_depth_ipyrad$MEAN_DEPTH < cutoff, ] 
site_depth_ipyrad<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
site_depth_ipyrad_small <- site_depth_ipyrad[site_depth_ipyrad$SUM_DEPTH < cutoff, ] 
het_ipyrad<- read.table("v_cardui_het_ind.het", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")
#miss_stacks<- read.table("v_cardui_missing_ind.imiss", header = TRUE)
#miss_site_stacks<- read.table("v_cardui_missing_site.lmiss", header = TRUE)
#site_mean_depth_stacks<- read.table("v_cardui_site_mean_depth_analysis.ldepth.mean", header = TRUE)
#site_mean_depth_stacks_small <- site_mean_depth_stacks[site_mean_depth_stacks$MEAN_DEPTH < cutoff, ] 
#site_depth_stacks<- read.table("v_cardui_site_depth.ldepth", header = TRUE)
#site_depth_stacks_small <- site_depth_stacks[site_depth_stacks$SUM_DEPTH < cutoff, ] 
#het_stacks<- read.table("v_cardui_het_ind.het", header = TRUE)

qual_stacks<- read.table("populations_snps_site_quality.lqual", header = TRUE)
miss_stacks<- read.table("populations_snps_missing_ind.imiss", header = TRUE)
miss_site_stacks<- read.table("populations_snps_missing_site.lmiss", header = TRUE)
site_mean_depth_stacks<- read.table("populations_snps_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_stacks_small <- site_mean_depth_stacks[site_mean_depth_stacks$MEAN_DEPTH < cutoff, ] 
site_depth_stacks<- read.table("populations_snps_site_depth.ldepth", header = TRUE)
site_depth_stacks_small <- site_depth_stacks[site_depth_stacks$SUM_DEPTH < cutoff, ] 
het_stacks<- read.table("populations_snps_het_ind.het", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/samtools")
qual_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_site_quality.lqual", header = TRUE)
miss_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_missing_ind.imiss", header = TRUE)
miss_site_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_missing_site.lmiss", header = TRUE)
site_mean_depth_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_samtools_small <- site_mean_depth_samtools[site_mean_depth_samtools$MEAN_DEPTH < cutoff, ] 
site_depth_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_site_depth.ldepth", header = TRUE)
site_depth_samtools_small <- site_depth_samtools[site_depth_samtools$SUM_DEPTH < cutoff, ] 
het_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_het_ind.het", header = TRUE)

mean(qual_samtools$QUAL)
mean(miss_samtools$F_MISS)
mean(miss_site_samtools$F_MISS)
mean(site_mean_depth_samtools$MEAN_DEPTH)
median(site_depth_samtools[site_depth_samtools$SUM_DEPTH < 10000,]$SUM_DEPTH)
mean(het_samtools$F)

mean(miss_stacks$F_MISS)
mean(miss_site_stacks$F_MISS)
mean(site_mean_depth_stacks$MEAN_DEPTH)
median(site_depth_stacks$SUM_DEPTH)
mean(het_stacks$F)

mean(miss_ipyrad$F_MISS)
mean(miss_site_ipyrad$F_MISS)
mean(site_mean_depth_ipyrad$MEAN_DEPTH)
median(site_depth_ipyrad$SUM_DEPTH)
mean(het_ipyrad$F)


#########          repeat masked 

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/vcf_files_repeat_masked/")

#qual_ipyrad<- read.table("v_cardui_site_quality.lqual", header = TRUE)
cutoff=500

miss_ipyrad<- read.table("v-cardui_ipyrad_masked_missing_ind.imiss", header = TRUE)
miss_site_ipyrad<- read.table("v-cardui_ipyrad_masked_missing_site.lmiss", header = TRUE)
site_mean_depth_ipyrad<- read.table("v-cardui_ipyrad_masked_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_ipyrad_small <- site_mean_depth_ipyrad[site_mean_depth_ipyrad$MEAN_DEPTH < cutoff, ] 
site_depth_ipyrad<- read.table("v-cardui_ipyrad_masked_site_depth.ldepth", header = TRUE)
site_depth_ipyrad_small <- site_depth_ipyrad[site_depth_ipyrad$SUM_DEPTH < cutoff, ] 
het_ipyrad<- read.table("v-cardui_ipyrad_masked_het_ind.het", header = TRUE)

qual_stacks<- read.table("populations_snps_site_quality.lqual", header = TRUE)
miss_stacks<- read.table("populations_snps_masked_missing_ind.imiss", header = TRUE)
miss_site_stacks<- read.table("populations_snps_masked_missing_site.lmiss", header = TRUE)
site_mean_depth_stacks<- read.table("populations_snps_masked_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_stacks_small <- site_mean_depth_stacks[site_mean_depth_stacks$MEAN_DEPTH < cutoff, ] 
site_depth_stacks<- read.table("populations_snps_masked_site_depth.ldepth", header = TRUE)
site_depth_stacks_small <- site_depth_stacks[site_depth_stacks$SUM_DEPTH < cutoff, ] 
het_stacks<- read.table("populations_snps_masked_het_ind.het", header = TRUE)

qual_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_site_quality.lqual", header = TRUE)
miss_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_missing_ind.imiss", header = TRUE)
miss_site_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_missing_site.lmiss", header = TRUE)
site_mean_depth_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_site_mean_depth_analysis.ldepth.mean", header = TRUE)
site_mean_depth_samtools_small <- site_mean_depth_samtools[site_mean_depth_samtools$MEAN_DEPTH < cutoff, ] 
site_depth_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_site_depth.ldepth", header = TRUE)
site_depth_samtools_small <- site_depth_samtools[site_depth_samtools$SUM_DEPTH < cutoff, ] 
het_samtools<- read.table("snp_calling_21_12_13_samtools_filtered_masked_het_ind.het", header = TRUE)

mean(miss_samtools$F_MISS)
mean(miss_site_samtools$F_MISS)
mean(site_mean_depth_samtools$MEAN_DEPTH)
median(site_depth_samtools[site_depth_samtools$SUM_DEPTH < 10000,]$SUM_DEPTH)
mean(het_samtools$F)

mean(miss_stacks$F_MISS)
mean(miss_site_stacks$F_MISS)
mean(site_mean_depth_stacks$MEAN_DEPTH)
median(site_depth_stacks$SUM_DEPTH)
mean(het_stacks$F)

mean(miss_ipyrad$F_MISS)
mean(miss_site_ipyrad$F_MISS)
mean(site_mean_depth_ipyrad$MEAN_DEPTH)
median(site_depth_ipyrad$SUM_DEPTH)
mean(het_ipyrad$F)

#hist(qual_ipyrad$QUAL, main="Site quality")

##missingness per individual
pdf("missingness_per_ind_hist.pdf")
#pdf("missingness_per_ind_hist_masked.pdf")

par(mfrow=c(1,3))

hist(miss_ipyrad$F_MISS, main="Ipyrad")
abline(v = median(miss_ipyrad$F_MISS), col="blue", lwd=2, lty=1)
abline(v = mean(miss_ipyrad$F_MISS), col="red", lwd=2, lty=1)

hist(miss_stacks$F_MISS, main="Stacks")
abline(v = median(miss_stacks$F_MISS), col="blue", lwd=2, lty=1)
abline(v = mean(miss_stacks$F_MISS), col="red", lwd=2, lty=1)

hist(miss_samtools$F_MISS, main="Samtools")
abline(v = median(miss_samtools$F_MISS), col="blue", lwd=2, lty=1)
abline(v = mean(miss_samtools$F_MISS), col="red", lwd=2, lty=1)


mtext("Missingness per individual",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()


#barplot(miss_ipyrad$F_MISS, main="Missingnes per individual", names=miss_ipyrad$INDV,las=2 )
#abline(h = 0.2, col="red", lwd=2, lty=1)

##missingness per site
pdf("missingness_per_site_hist.pdf")
#pdf("missingness_per_site_hist_mask.pdf")

par(mfrow=c(1,3))

hist(miss_site_ipyrad$F_MISS, main="Ipyrad")
abline(v = mean(miss_site_ipyrad$F_MISS), col="red", lwd=2, lty=1)
abline(v = median(miss_site_ipyrad$F_MISS), col="blue", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(miss_site_stacks$F_MISS, main="Stacks")
abline(v = mean(miss_site_stacks$F_MISS), col="red", lwd=2, lty=1)
abline(v = median(miss_site_stacks$F_MISS), col="blue", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(miss_site_samtools$F_MISS, main="Samtools")
abline(v = mean(miss_site_samtools$F_MISS), col="red", lwd=2, lty=1)
abline(v = median(miss_site_samtools$F_MISS), col="blue", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

mtext("Missingness per site",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()



##site mean depth
pdf("site_mean_depth_hist.pdf")
#pdf("site_mean_depth_hist_mask.pdf")

par(mfrow=c(1,3))

hist(site_mean_depth_ipyrad$MEAN_DEPTH, main="Ipyrad",breaks = 100)
abline(v = mean(site_mean_depth_ipyrad$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_mean_depth_stacks$MEAN_DEPTH, main="Stacks",breaks = 100)
abline(v = mean(site_mean_depth_stacks$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_mean_depth_samtools$MEAN_DEPTH, main="Samtools",breaks = 100)
abline(v = mean(site_mean_depth_samtools$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

mtext("Site mean depth",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()

##site mean depth small
pdf("site_mean_depth_small_hist.pdf")
#pdf("site_mean_depth_small_hist_mask.pdf")

par(mfrow=c(1,3))

hist(site_mean_depth_ipyrad_small$MEAN_DEPTH, main="Ipyrad")
abline(v = mean(site_mean_depth_ipyrad_small$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_mean_depth_stacks_small$MEAN_DEPTH, main="Stacks")
abline(v = mean(site_mean_depth_stacks_small$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_mean_depth_samtools_small$MEAN_DEPTH, main="Samtools")
abline(v = mean(site_mean_depth_samtools_small$MEAN_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

mtext("Site mean depth smaller than 500",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()



##site depth
pdf("site_depth_hist.pdf")
#pdf("site_depth_hist_mask.pdf")

par(mfrow=c(1,3))

hist(site_depth_ipyrad$SUM_DEPTH, main="Ipyrad",breaks = 100)
abline(v = mean(site_depth_ipyrad$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_depth_stacks$SUM_DEPTH, main="Stacks",breaks = 100)
abline(v = mean(site_depth_stacks$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_depth_samtools$SUM_DEPTH, main="Samtools",breaks = 100)
abline(v = mean(site_depth_samtools$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

mtext("Site depth",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()

##site depth small
pdf("site_depth_small_hist.pdf")
#pdf("site_depth_small_hist_mask.pdf")

par(mfrow=c(1,3))

hist(site_depth_ipyrad_small$SUM_DEPTH, main="Ipyrad")
abline(v = mean(site_depth_ipyrad_small$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_depth_stacks_small$SUM_DEPTH, main="Stacks")
abline(v = mean(site_depth_stacks_small$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

hist(site_depth_samtools_small$SUM_DEPTH, main="Samtools")
abline(v = mean(site_depth_samtools_small$SUM_DEPTH), col="blue", lwd=2, lty=1)
abline(v = 15, col="red", lwd=2, lty=1)
#abline(v = 0.2, col="green", lwd=2, lty=1)

mtext("Site depth smaller than 500",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

legend("topright",legend=c("median","mean"),lty=1,col=1:2, cex=0.8)

dev.off()


##site depth small
pdf("inbreeding_coeffs_hist.pdf")
#pdf("inbreeding_coeffs_hist_mask.pdf")

par(mfrow=c(1,3))

hist(het_ipyrad$F, main="Ipyrad")
hist(het_stacks$F, main="Stacks")
hist(het_samtools$F, main="Samtools")


mtext("Inbreeding coefficient per individual",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)

dev.off()
