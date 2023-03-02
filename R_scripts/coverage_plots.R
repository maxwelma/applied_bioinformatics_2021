
#BWA
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/BWA")

for (i in c(106, 107, 111, 113, 122, 127, 131, 132, 141, 142, 144, 153, 159, 161, 169, 170, 174, 176, 178, 188))
{
  nam <- paste("cov_", i, sep = "")
  f <- paste(i, "_sorted_mapping_coverage", sep = "")
  assign(nam, read.table(f, header = TRUE))
}

#masked
for (i in c(106, 107, 111, 113, 122, 127, 131, 132, 141, 142, 144, 153, 159, 161, 169, 170, 174, 176, 178, 188))
{
  nam <- paste("cov_mask_", i, sep = "")
  f <- paste(i, "_sorted_mapping_masked_coverage", sep = "")
  assign(nam, read.table(f, header = TRUE))
}



#Ipyrad
setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/ipyrad_cov/raw/")

for (i in list.files("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/ipyrad_cov/raw/"))
{
  nam <- paste("cov_", substr(i,8,10), sep="")
  assign(nam, read.table(i, header = TRUE))
}

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/ipyrad_cov/masked/")

for (i in list.files("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/ipyrad_cov/masked/"))
{
  nam <- paste("cov_mask_", substr(i,8,10), sep="")
  assign(nam, read.table(i, header = TRUE))
}

setwd("C:/Users/matil/OneDrive/Dokument/R/applied_bioinfo/ipyrad_cov/")

#plot chromosome coverage per individual
#W is absent in males, and females have only one copy of the Z.
#24 is z?? 40 is w??

pdf("coverages_barplot_masked_ipyrad.pdf")
par(mar=c(6.1, 4.1, 4.1, 2.1))
par(mfrow=c(1,2)) 


mtext("Ipyrad",                   # Add main title
      side = 3,
      line = -1.5,
      outer = TRUE,font = 2, cex=1)


#female
barplot(cov_106$coverage, col=1:15, main="Individual 106",ylim=c(0,3.5),names=cov_106$rname, las=2,cex.names=0.8)
abline(h = mean(cov_106$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_106$coverage, col=1:15, main="Individual 106 repeat masked",ylim=c(0,3.5),names=cov_mask_106$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_106$coverage), col="red", lwd=2, lty=1)


#legend("topleft",legend=cov_106$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

#female
barplot(cov_107$coverage,col=1:15, main="Individual 107",ylim=c(0,3.5),names=cov_107$rname, las=2,cex.names=0.8)
abline(h = mean(cov_107$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_107$coverage, col=1:15, main="Individual 107 repeat masked",ylim=c(0,3.5),names=cov_mask_107$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_107$coverage), col="red", lwd=2, lty=1)

#legend("topleft",legend=cov_107$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

#male
#plot(cov_111$coverage, pch=1:16, col=1:15, main="Individual 111",ylim=c(0,3.5))
#legend("bottomleft",legend=cov_111$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_111$coverage,col=1:15, main="Individual 111",ylim=c(0,3.5),names=cov_111$rname, las=2,cex.names=0.8)
abline(h = mean(cov_111$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_111$coverage, col=1:15, main="Individual 111 repeat masked",ylim=c(0,3.5),names=cov_mask_111$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_111$coverage), col="red", lwd=2, lty=1)


#male
#plot(cov_113$coverage, pch=1:16, col=1:15, main="Individual 113",ylim=c(0,3.5))
#legend("bottomleft",legend=cov_113$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_113$coverage,col=1:15, main="Individual 113",ylim=c(0,3.5),names=cov_113$rname, las=2,cex.names=0.8)
abline(h = mean(cov_113$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_113$coverage, col=1:15, main="Individual 113 repeat masked",ylim=c(0,3.5),names=cov_mask_113$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_113$coverage), col="red", lwd=2, lty=1)



#female
#plot(cov_122$coverage, pch=1:16, col=1:15, main="Individual 122",ylim=c(0,3.5))
#legend("topleft",legend=cov_122$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_122$coverage,col=1:15, main="Individual 122",ylim=c(0,3.5),names=cov_122$rname, las=2,cex.names=0.8)
abline(h = mean(cov_122$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_122$coverage, col=1:15, main="Individual 122 repeat masked",ylim=c(0,3.5),names=cov_mask_122$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_122$coverage), col="red", lwd=2, lty=1)



#female
#plot(cov_127$coverage, pch=1:16, col=1:15, main="Individual 127",ylim=c(0,3.5))
#legend("topleft",legend=cov_127$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_127$coverage,col=1:15, main="Individual 127",ylim=c(0,3.5),names=cov_127$rname, las=2,cex.names=0.8)
abline(h = mean(cov_127$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_127$coverage, col=1:15, main="Individual 127 repeat masked",ylim=c(0,3.5),names=cov_mask_127$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_127$coverage), col="red", lwd=2, lty=1)



#female
#plot(cov_131$coverage, pch=1:16, col=1:15, main="Individual 131",ylim=c(0,3.5))
#legend("topleft",legend=cov_131$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_131$coverage,col=1:15, main="Individual 131",ylim=c(0,3.5),names=cov_131$rname, las=2,cex.names=0.8)
abline(h = mean(cov_131$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_131$coverage, col=1:15, main="Individual 131 repeat masked",ylim=c(0,3.5),names=cov_mask_131$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_131$coverage), col="red", lwd=2, lty=1)


#male
#plot(cov_132$coverage, pch=1:16, col=1:15, main="Individual 132",ylim=c(0,3.5))
#legend("bottomleft",legend=cov_132$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_132$coverage,col=1:15, main="Individual 132",ylim=c(0,3.5),names=cov_132$rname, las=2,cex.names=0.8)
abline(h = mean(cov_132$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_132$coverage, col=1:15, main="Individual 132 repeat masked",ylim=c(0,3.5),names=cov_mask_132$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_132$coverage), col="red", lwd=2, lty=1)


#female
#plot(cov_141$coverage, pch=1:16, col=1:15, main="Individual 141",ylim=c(0,3.5))
#legend("topleft",legend=cov_141$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_141$coverage,col=1:15, main="Individual 141",ylim=c(0,3.5),names=cov_141$rname, las=2,cex.names=0.8)
abline(h = mean(cov_141$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_141$coverage, col=1:15, main="Individual 141 repeat masked",ylim=c(0,3.5),names=cov_mask_141$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_141$coverage), col="red", lwd=2, lty=1)


#female
#plot(cov_142$coverage, pch=1:16, col=1:15, main="Individual 142",ylim=c(0,3.5))
#legend("topleft",legend=cov_142$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_142$coverage,col=1:15, main="Individual 142",ylim=c(0,3.5),names=cov_142$rname, las=2,cex.names=0.8)
abline(h = mean(cov_142$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_142$coverage, col=1:15, main="Individual 142 repeat masked",ylim=c(0,3.5),names=cov_mask_142$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_142$coverage), col="red", lwd=2, lty=1)



#male ??
#plot(cov_144$coverage, pch=1:16, col=1:15, main="Individual 144",ylim=c(0,3.5))
#legend("topleft",legend=cov_144$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_144$coverage,col=1:15, main="Individual 144",ylim=c(0,3.5),names=cov_144$rname, las=2,cex.names=0.8)
abline(h = mean(cov_144$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_144$coverage, col=1:15, main="Individual 142 repeat masked",ylim=c(0,3.5),names=cov_mask_142$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_142$coverage), col="red", lwd=2, lty=1)


#??
#plot(cov_153$coverage, pch=1:16, col=1:15, main="Individual 153",ylim=c(0,3.5))
#legend("topleft",legend=cov_153$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_153$coverage,col=1:15, main="Individual 153",ylim=c(0,3.5),names=cov_153$rname, las=2,cex.names=0.8)
abline(h = mean(cov_153$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_153$coverage, col=1:15, main="Individual 153 repeat masked",ylim=c(0,3.5),names=cov_mask_153$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_153$coverage), col="red", lwd=2, lty=1)


#??
#plot(cov_159$coverage, pch=1:16, col=1:15, main="Individual 159",ylim=c(0,3.5))
#legend("topleft",legend=cov_159$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_159$coverage,col=1:15, main="Individual 159",ylim=c(0,3.5),names=cov_159$rname, las=2,cex.names=0.8)
abline(h = mean(cov_159$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_159$coverage, col=1:15, main="Individual 159 repeat masked",ylim=c(0,3.5),names=cov_mask_159$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_159$coverage), col="red", lwd=2, lty=1)

#female
#plot(cov_161$coverage, pch=1:16, col=1:15, main="Individual 161",ylim=c(0,3.5))
#legend("topleft",legend=cov_161$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_161$coverage,col=1:15, main="Individual 161",ylim=c(0,3.5),names=cov_161$rname, las=2,cex.names=0.8)
abline(h = mean(cov_161$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_161$coverage, col=1:15, main="Individual 161 repeat masked",ylim=c(0,3.5),names=cov_mask_161$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_161$coverage), col="red", lwd=2, lty=1)

#male??
#plot(cov_169$coverage, pch=1:16, col=1:15, main="Individual 169",ylim=c(0,3.5))
#legend("topleft",legend=cov_169$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_169$coverage,col=1:15, main="Individual 169",ylim=c(0,3.5),names=cov_169$rname, las=2,cex.names=0.8)
abline(h = mean(cov_169$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_169$coverage, col=1:15, main="Individual 169 repeat masked",ylim=c(0,3.5),names=cov_mask_169$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_169$coverage), col="red", lwd=2, lty=1)

#male
#plot(cov_170$coverage, pch=1:16, col=1:15, main="Individual 170",ylim=c(0,3.5))
#legend("topleft",legend=cov_170$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_170$coverage,col=1:15, main="Individual 170",ylim=c(0,3.5),names=cov_170$rname, las=2,cex.names=0.8)
abline(h = mean(cov_170$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_170$coverage, col=1:15, main="Individual 170 repeat masked",ylim=c(0,3.5),names=cov_mask_170$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_170$coverage), col="red", lwd=2, lty=1)

#female
#plot(cov_174$coverage, pch=1:16, col=1:15, main="Individual 174",ylim=c(0,3.5))
#legend("topleft",legend=cov_174$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_174$coverage,col=1:15, main="Individual 174",ylim=c(0,3.5),names=cov_174$rname, las=2,cex.names=0.8)
abline(h = mean(cov_174$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_174$coverage, col=1:15, main="Individual 174 repeat masked",ylim=c(0,3.5),names=cov_mask_174$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_174$coverage), col="red", lwd=2, lty=1)

#female
#plot(cov_176$coverage, pch=1:16, col=1:15, main="Individual 176",ylim=c(0,3.5))
#legend("topleft",legend=cov_176$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_176$coverage,col=1:15, main="Individual 176",ylim=c(0,3.5),names=cov_176$rname, las=2,cex.names=0.8)
abline(h = mean(cov_176$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_176$coverage, col=1:15, main="Individual 176 repeat masked",ylim=c(0,3.5),names=cov_mask_176$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_176$coverage), col="red", lwd=2, lty=1)

#female
#plot(cov_178$coverage, pch=1:16, col=1:15, main="Individual 178",ylim=c(0,3.5))
#legend("topleft",legend=cov_178$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_178$coverage,col=1:15, main="Individual 178",ylim=c(0,3.5),names=cov_178$rname, las=2,cex.names=0.8)
abline(h = mean(cov_178$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_178$coverage, col=1:15, main="Individual 178 repeat masked",ylim=c(0,3.5),names=cov_mask_178$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_178$coverage), col="red", lwd=2, lty=1)

#male
#plot(cov_188$coverage, pch=1:16, col=1:15, main="Individual 188",ylim=c(0,3.5))
#legend("bottomleft",legend=cov_188$rname, pch=1:16,col=1:15, cex=0.5,ncol = 3)

barplot(cov_188$coverage,col=1:15, main="Individual 188",ylim=c(0,3.5),names=cov_188$rname, las=2,cex.names=0.8)
abline(h = mean(cov_188$coverage), col="red", lwd=2, lty=1)

barplot(cov_mask_188$coverage, col=1:15, main="Individual 188 repeat masked",ylim=c(0,3.5),names=cov_mask_188$rname, las=2,cex.names=0.8)
abline(h = mean(cov_mask_188$coverage), col="red", lwd=2, lty=1)

dev.off()


#######     pool individuals together and get densities of coverage per chromosome, separate by gender??

all <- rbind(cov_106,cov_107,cov_111,cov_113,cov_122, cov_127, cov_131, cov_132, cov_141, cov_142, cov_144, cov_153, cov_159, cov_161, cov_169, cov_170, cov_174, cov_176, cov_178, cov_188)
fem <- rbind(cov_106,cov_107,cov_122,cov_127,cov_131,cov_141,cov_142,cov_161,cov_174,cov_176,cov_178) #female samples
male <- rbind(cov_111,cov_113,cov_132, cov_144, cov_153, cov_159, cov_169, cov_170, cov_188) #male samples

all_split <- split(all, all$rname)
fem_split<- split(fem, fem$rname)
male_split <- split(male,male$rname)

all_mask <- rbind(cov_mask_106,cov_mask_107,cov_mask_111,cov_mask_113,cov_mask_122, cov_mask_127, cov_mask_131, cov_mask_132, cov_mask_141, cov_mask_142, cov_mask_144, cov_mask_153, cov_mask_159, cov_mask_161, cov_mask_169, cov_mask_170, cov_mask_174, cov_mask_176, cov_mask_178, cov_mask_188)
fem_mask <- rbind(cov_mask_106,cov_mask_107,cov_mask_122, cov_mask_127, cov_mask_131, cov_mask_141, cov_mask_142, cov_mask_161, cov_mask_174, cov_mask_176, cov_mask_178)
male_mask <- rbind(cov_mask_111,cov_mask_113, cov_mask_132, cov_mask_144, cov_mask_153, cov_mask_159, cov_mask_169, cov_mask_170, cov_mask_188)

all_mask_split <- split(all_mask, all_mask$rname)
fem_mask_split <- split(fem_mask, fem_mask$rname)
male_mask_split <- split(male_mask, male_mask$rname)

#######     normalise each chromosome by average coverage of all chromosomes

dfList_mask <- list(cov_mask_106,cov_mask_107,cov_mask_111,cov_mask_113,cov_mask_122, cov_mask_127, cov_mask_131, cov_mask_132, cov_mask_141, cov_mask_142, cov_mask_144, cov_mask_153, cov_mask_159, cov_mask_161, cov_mask_169, cov_mask_170, cov_mask_174, cov_mask_176, cov_mask_178, cov_mask_188)
dfList <- list(cov_106,cov_107,cov_111,cov_113,cov_122, cov_127, cov_131, cov_132, cov_141, cov_142, cov_144, cov_153, cov_159, cov_161, cov_169, cov_170, cov_174, cov_176, cov_178, cov_188)

norm_dataframe <- function(x) {
  #dataframe2 <- data.frame(dataframe)
  #dataframe[column] <- dataframe[column]/mean(dataframe[column])
  #dataframe[column]
  #(dataframe[column])
  x$coverage<-x$coverage/mean(x$coverage)
  return(x)
}

count=0
for (i in c(106, 107, 111, 113, 122, 127, 131, 132, 141, 142, 144, 153, 159, 161, 169, 170, 174, 176, 178, 188))
{
  nam <- paste("cov_norm_", i, sep = "")
  count=count+1
  assign(nam,norm_dataframe(dfList[[count]]))
}

#masked samples
count=0
for (i in c(106, 107, 111, 113, 122, 127, 131, 132, 141, 142, 144, 153, 159, 161, 169, 170, 174, 176, 178, 188))
{
  nam <- paste("cov_norm_mask_", i, sep = "")
  count=count+1
  assign(nam,norm_dataframe(dfList_mask[[count]]))
}

all_norm <- rbind(cov_norm_106,cov_norm_107,cov_norm_111,cov_norm_113,cov_norm_122,cov_norm_127,cov_norm_131,cov_norm_132,cov_norm_141,cov_norm_142,cov_norm_144,cov_norm_153,cov_norm_159,cov_norm_161,cov_norm_169,cov_norm_170,cov_norm_174,cov_norm_176,cov_norm_178,cov_norm_188)
fem_norm <- rbind(cov_norm_106,cov_norm_107,cov_norm_122,cov_norm_127,cov_norm_131,cov_norm_141,cov_norm_142,cov_norm_161,cov_norm_174,cov_norm_176,cov_norm_178) #female samples
male_norm <- rbind(cov_norm_111,cov_norm_113,cov_norm_132, cov_norm_144, cov_norm_153, cov_norm_159, cov_norm_169, cov_norm_170, cov_norm_188) #male samples

all_norm_split <- split(all_norm, all_norm$rname)
fem_norm_split <- split(fem_norm, fem_norm$rname)
male_norm_split <- split(male_norm, male_norm$rname)

all_norm <- rbind(cov_norm_106,cov_norm_107,cov_norm_111,cov_norm_113,cov_norm_122, cov_norm_127, cov_norm_131, cov_norm_132, cov_norm_141, cov_norm_142, cov_norm_144, cov_norm_153, cov_norm_159, cov_norm_161, cov_norm_169, cov_norm_170, cov_norm_174, cov_norm_176, cov_norm_178, cov_norm_188)
fem_norm <- rbind(cov_norm_106,cov_norm_107,cov_norm_122, cov_norm_127, cov_norm_131, cov_norm_141, cov_norm_142, cov_norm_161, cov_norm_174, cov_norm_176, cov_norm_178)
male_norm <- rbind(cov_norm_111,cov_norm_113, cov_norm_132, cov_norm_144, cov_norm_153, cov_norm_159, cov_norm_169, cov_norm_170, cov_norm_188)


all_norm_mask <- rbind(cov_norm_mask_106,cov_norm_mask_107,cov_norm_mask_111,cov_norm_mask_113,cov_norm_mask_122,cov_norm_mask_127,cov_norm_mask_131,cov_norm_mask_132,cov_norm_mask_141,cov_norm_mask_142,cov_norm_mask_144,cov_norm_mask_153,cov_norm_mask_159,cov_norm_mask_161,cov_norm_mask_169,cov_norm_mask_170,cov_norm_mask_174,cov_norm_mask_176,cov_norm_mask_178,cov_norm_mask_188)
fem_norm_mask <- rbind(cov_norm_mask_106,cov_norm_mask_107,cov_norm_mask_122,cov_norm_mask_127,cov_norm_mask_131,cov_norm_mask_141,cov_norm_mask_142,cov_norm_mask_161,cov_norm_mask_174,cov_norm_mask_176,cov_norm_mask_178) #female samples
male_norm_mask <- rbind(cov_norm_mask_111,cov_norm_mask_113,cov_norm_mask_132, cov_norm_mask_144, cov_norm_mask_153, cov_norm_mask_159, cov_norm_mask_169, cov_norm_mask_170, cov_norm_mask_188) #male samples

all_norm_mask_split <- split(all_norm_mask, all_norm_mask$rname)
fem_norm_mask_split <- split(fem_norm_mask, fem_norm_mask$rname)
male_norm_mask_split <- split(male_norm_mask, male_norm_mask$rname)

all_norm_mask <- rbind(cov_norm_mask_106,cov_norm_mask_107,cov_norm_mask_111,cov_norm_mask_113,cov_norm_mask_122, cov_norm_mask_127, cov_norm_mask_131, cov_norm_mask_132, cov_norm_mask_141, cov_norm_mask_142, cov_norm_mask_144, cov_norm_mask_153, cov_norm_mask_159, cov_norm_mask_161, cov_norm_mask_169, cov_norm_mask_170, cov_norm_mask_174, cov_norm_mask_176, cov_norm_mask_178, cov_norm_mask_188)
fem_norm_mask <- rbind(cov_norm_mask_106,cov_norm_mask_107,cov_norm_mask_122, cov_norm_mask_127, cov_norm_mask_131, cov_norm_mask_141, cov_norm_mask_142, cov_norm_mask_161, cov_norm_mask_174, cov_norm_mask_176, cov_norm_mask_178)
male_norm_mask <- rbind(cov_norm_mask_111,cov_norm_mask_113, cov_norm_mask_132, cov_norm_mask_144, cov_norm_mask_153, cov_norm_mask_159, cov_norm_mask_169, cov_norm_mask_170, cov_norm_mask_188)






#######     pooled unmasked
pdf("coverages_pooled_sex_chromosomes_BWA.pdf")
#ipyrad
#plot(density(all_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage ipyrad", col=1, ylim=c(0,2.1), xlim=c(0.5,2.5),lwd=2 )
#BWA
plot(density(all_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage BWA", col=1, ylim=c(0,1.2), xlim=c(0.5,4),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(all_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(all_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(all_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

abline(v=median(subset(all, !(all$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)

dev.off()

########     pooled masked

pdf("coverages_pooled_sex_chromosomes_masked_BWA.pdf")

#ipyrad
#plot(density(all_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked ipyrad", col=1, ylim=c(0,4), xlim=c(0,2),lwd=2 )
#BWA
plot(density(all_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked BWA", col=1, ylim=c(0,2.8), xlim=c(0,3.2),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(all_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(all_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(all_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

abline(v=median(subset(all_mask, !(all_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
#legend(1.1, 3.6,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()

#######     pooled unmasked females
pdf("coverages_pooled_females_sex_chromosomes_ipyrad.pdf")
#pdf("coverages_pooled_females_sex_chromosomes_BWA.pdf")
#ipyrad
plot(density(fem_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage ipyrad females", col=1, ylim=c(0,2.1), xlim=c(0.5,3.5),lwd=2 )
#BWA
#plot(density(fem_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage BWA females", col=1, ylim=c(0,2.1), xlim=c(0.6,3.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(fem_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(fem_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(fem_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(fem, !(fem$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2) #median of autosomes

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)
legend(2.15, 1.95,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


########     pooled masked females

pdf("coverages_pooled_females_sex_chromosomes_masked_ipyrad.pdf")
#pdf("coverages_pooled_females_sex_chromosomes_masked_BWA.pdf")

#ipyrad
plot(density(fem_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked ipyrad females", col=1, ylim=c(0,5), xlim=c(0,2.5),lwd=2 )
#BWA
#plot(density(fem_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked BWA females", col=1, ylim=c(0,5), xlim=c(0,2.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(fem_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(fem_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(fem_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(fem_mask, !(fem_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

legend(1.31, 4.65,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


#######     pooled unmasked males
pdf("coverages_pooled_males_sex_chromosomes_ipyrad.pdf")
#pdf("coverages_pooled_males_sex_chromosomes_BWA.pdf")

#ipyrad
plot(density(male_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage ipyrad males", col=1, ylim=c(0,1.8), xlim=c(0.5,4),lwd=2 )
#BWA
#plot(density(male_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage BWA males", col=1, ylim=c(0,1.9), xlim=c(0.6,4),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(male_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(male_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(male_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(male, !(male$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2) #median of autosomes

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)
legend(2.4, 1.65,"Mean autosome coverage",lty=2,col=2, cex=1)
#legend(2.4, 1.75,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


########     pooled masked males
pdf("coverages_pooled_males_sex_chromosomes_masked_ipyrad.pdf")
#pdf("coverages_pooled_males_sex_chromosomes_masked_BWA.pdf")

#ipyrad
plot(density(male_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked ipyrad males", col=1, ylim=c(0,9.8), xlim=c(0,3.5),lwd=2 )
#BWA
#plot(density(male_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage repeat masked BWA males", col=1, ylim=c(0,9.5), xlim=c(0,3.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(male_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(male_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(male_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(male_mask, !(male_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

legend(1.85, 8.65,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()

########     

##########################################################  plot normalised samples




#######     pooled unmasked
pdf("coverages_norm_pooled_sex_chromosomes_ipyrad.pdf")
#pdf("coverages_norm_pooled_sex_chromosomes_BWA.pdf")
#ipyrad
plot(density(all_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage ipyrad", col=1, ylim=c(0,3.5),lwd=2 )
#BWA
#plot(density(all_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage BWA", col=1, ylim=c(0,3),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(all_norm_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(all_norm_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(all_norm_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )
abline(v=median(subset(all_norm, !(all_norm$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

#legend(1.06, 2.75,"Mean autosome coverage",lty=2,col=2, cex=1)
legend(1.12, 3.3,"Mean autosome coverage",lty=2,col=2, cex=1)


dev.off()

########     pooled masked

pdf("coverages_norm_pooled_sex_chromosomes_masked_ipyrad.pdf")
#pdf("coverages_norm_pooled_sex_chromosomes_masked_BWA.pdf")

#ipyrad
plot(density(all_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked ipyrad", col=1, ylim=c(0,4.7), xlim=c(0,1.5),lwd=2 )
#BWA
#plot(density(all_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked BWA", col=1, ylim=c(0,4.5), xlim=c(0,1.6),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(all_norm_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(all_norm_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(all_norm_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )


abline(v=median(subset(all_norm_mask, !(all_norm_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
#legend(0.85,4,"Mean autosome coverage",lty=2,col=2, cex=1)
legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

legend(0.79,4.4,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()

#######     pooled unmasked females
pdf("coverages_norm_pooled_females_sex_chromosomes_ipyrad.pdf")
#pdf("coverages_norm_pooled_females_sex_chromosomes_BWA.pdf")
#ipyrad
plot(density(fem_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage ipyrad females", col=1, ylim=c(0,22), xlim=c(0.5,1.5),lwd=2 )
#BWA
#plot(density(fem_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage BWA females", col=1, ylim=c(0,35), xlim=c(0.5,1.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(fem_norm_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(fem_norm_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(fem_norm_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(fem_norm, !(fem_norm$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2) #median of autosomes

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)
#legend(1.03, 32,"Mean autosome coverage",lty=2,col=2, cex=1)
legend(1.03, 20,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


########     pooled masked females

pdf("coverages_norm_pooled_females_sex_chromosomes_masked_ipyrad.pdf")
#pdf("coverages_norm_pooled_females_sex_chromosomes_masked_BWA.pdf")

#ipyrad
plot(density(fem_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked ipyrad females", col=1, ylim=c(0,30), xlim=c(0,1.3),lwd=2 )
#BWA
#plot(density(fem_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked BWA females", col=1, ylim=c(0,21), xlim=c(0,1.3),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(fem_norm_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(fem_norm_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(fem_norm_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(fem_norm_mask, !(fem_norm_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

legend(0.7, 28,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


#######     pooled unmasked males
pdf("coverages_norm_pooled_males_sex_chromosomes_ipyrad.pdf")
#pdf("coverages_norm_pooled_males_sex_chromosomes_BWA.pdf")

#ipyrad
plot(density(male_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage ipyrad males", col=1, ylim=c(0,17), xlim=c(0.6,1.3),lwd=2 )
#BWA
#plot(density(male_norm_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage BWA males", col=1, ylim=c(0,20), xlim=c(0.5,1.3),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(male_norm_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(male_norm_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(male_norm_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(male_norm, !(male_norm$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2) #median of autosomes

legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)
#legend(0.92,19,"Mean autosome coverage",lty=2,col=2, cex=1)
legend(0.98, 16,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()


########     pooled masked males
pdf("coverages_norm_pooled_males_sex_chromosomes_masked_ipyrad.pdf")
#pdf("coverages_norm_pooled_males_sex_chromosomes_masked_BWA.pdf")

#ipyrad
plot(density(male_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked ipyrad males", col=1, ylim=c(0,18), xlim=c(0,1.5),lwd=2 )
#BWA
#plot(density(male_norm_mask_split[[cov_106$rname[31]]][["coverage"]]),main="Normalised chromosome coverage repeat masked BWA males", col=1, ylim=c(0,21), xlim=c(0,1.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  lines(density(male_norm_mask_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(male_norm_mask_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
lines(density(male_norm_mask_split[[cov_106$rname[31]]][["coverage"]]), col=1 ,lwd=2 )

abline(v=mean(subset(male_norm_mask, !(male_norm_mask$rname %in% c("LR999940.1","LR999924.1")))$coverage) ,col="red", lwd=2, lty=2)
legend("topright",cov_106$rname[31:32],lty=1,col=1:2, cex=1,ncol = 2)

legend(0.8,16.5,"Mean autosome coverage",lty=2,col=2, cex=1)

dev.off()

########   















#Sex chromosomes?
plot(density(all_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage", col=1, ylim=c(0,1.2) )
lines(density(all_split[[cov_106$rname[32]]][["coverage"]]),main="Chromosome coverage", col=2, ylim=c(0,1.2) )
legend("topright",cov_106$rname[31:32],pch="-",col=1:2, cex=0.8,ncol = 2)

pdf("coverages_females_ipyrad.pdf")
#females maybe?
plot(density(fem_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage females", col=1, ylim=c(0,4), xlim=c(0.5,3.5) ,lwd=2 )
for (i in cov_106$rname[1:30]){
  count= count +1
  lines(density(fem_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(fem_split[[cov_106$rname[32]]][["coverage"]]), col=2 ,lwd=2 )
legend("topright",cov_106$rname[31:32],pch="-",col=1:2, cex=1,ncol = 2)
dev.off()

pdf("coverages_males_ipyrad.pdf")
#males maybe?
plot(density(male_split[[cov_106$rname[31]]][["coverage"]]),main="Chromosome coverage males", col=1, ylim=c(0,3), xlim=c(0.5,3.5),lwd=2 )
for (i in cov_106$rname[1:30]){
  count= count +1
  lines(density(male_split[[i]][["coverage"]]), col="gray")
  
}
lines(density(male_split[[cov_106$rname[32]]][["coverage"]]), col=2,lwd=2 )

legend("topright",cov_106$rname[31:32],pch="-",col=1:2, cex=1,ncol = 2)
dev.off()


pdf("coverages_pooled_ipyrad.pdf")
count=1
plot(density(all_split[[cov_106$rname[1]]][["coverage"]]),main="Chromosome coverage", col=count, ylim=c(0,1.2) )
for (i in cov_106$rname[2:length(cov_106$rname)]){
  count= count +1
  lines(density(all_split[[i]][["coverage"]]), col=count)
  
}

legend("topright",cov_106$rname,pch="-",col=1:32, cex=0.6,ncol = 2)
dev.off()


#boxplot(all_split$coverage, col=1:15, main="Individual 106",ylim=c(0,3.5),names=cov_106$rname, las=2)



cov_106_mask <- read.table("106_masked_sorted_mapping_coverage", header = TRUE)
cov_106_mask_sub <- read.table("106_masked_subtract_sorted_mapping_coverage", header = TRUE)
cov_106_mask_2 <- read.table("106_sorted_mapping_masked_coverage", header = TRUE)


pdf("106_coverage_comp.pdf")
par(mfrow=c(1,2)) 
#female
barplot(cov_106$coverage, col=1:15, main="Individual 106",ylim=c(0,3.5),names=cov_106$rname, las=2,cex.names=0.8)
abline(h = mean(cov_106$coverage), col="red", lwd=2, lty=1)
#masked
cov_106_mask <- read.table("106_masked_sorted_mapping_coverage", header = TRUE)
#female
barplot(cov_106_mask$coverage, col=1:15, main="Individual 106 repeat masked intersect",ylim=c(0,3.5),names=cov_106_mask$rname, las=2,cex.names=0.8)
abline(h = mean(cov_106_mask$coverage), col="red", lwd=2, lty=1)

barplot(cov_106_mask_sub$coverage, col=1:15, main="Individual 106 repeat masked subtract",ylim=c(0,3.5),names=cov_106_mask_sub$rname, las=2,cex.names=0.8)
abline(h = mean(cov_106_mask_sub$coverage), col="red", lwd=2, lty=1)

barplot(cov_106_mask_2$coverage, col=1:15, main="Individual 106 repeat masked subtract new",ylim=c(0,3.5),names=cov_106_mask_2$rname, las=2,cex.names=0.8)
abline(h = mean(cov_106_mask_2$coverage), col="red", lwd=2, lty=1)

dev.off()

#cov_106_split <- split(cov_106, cov_106$rname)

#plot(density(cov_106_split[["LR999924.1"]][["coverage"]]),main="LR999924.1")


