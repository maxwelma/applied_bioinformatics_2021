
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")
miss_ipyrad<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")
miss_stacks<- read.table("v_cardui_missing_ind.imiss", header = TRUE)

miss = data.frame(miss_ipyrad$F_MISS,miss_stacks$F_MISS)
chisq<-chisq.test(miss)

test <- fisher.test(miss)

fisher.test(table(miss_ipyrad$F_MISS,miss_stacks$F_MISS))


#p> 0.05 = fail to reject hypothesis that there no differences between the distributions (independent variables)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo")
miss_site_ipyrad<- read.table("v_cardui_missing_site.lmiss", header = TRUE)

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/stacks")
miss_site_stacks<- read.table("v_cardui_missing_site.lmiss", header = TRUE)

miss_site_merged=merge(miss_site_ipyrad, miss_site_stacks, by=c("CHR","POS"))
miss_site_F = data.frame(miss_site_merged$F_MISS.x,miss_site_merged$F_MISS.y)

chisq.test(miss_site_F)

fisher.test(miss_site_F)
