#takes and sorts reads
#calculates fold change for each treatment compared to the control
#log2 transformation
sort_FC_OD<-reads_FC_log2[order(reads_FC_log2$OD.UC),]
sort_FC_OC<-reads_FC_log2[order(reads_FC_log2$OC.UC),]
sort_FC_UD<-][order(reads_FC_log2$UD.UC),]
sort_FC_OD_up<-sort_FC_OD[1:50,]
sort_FC_OC_up<-sort_FC_OC[1:50,]
sort_FC_UD_up<-sort_FC_UD[1:50,]
sort_FC_OD_down<-reads_FC_log2[order(-reads_FC_log2$OD.UC),]
sort_FC_OC_down<-reads_FC_log2[order(-reads_FC_log2$OC.UC),]
sort_FC_UD_down<-reads_FC_log2[order(-reads_FC_log2$UD.UC),]
sort_FC_OD_down<-sort_FC_OD_down[1:50,]
sort_FC_OC_down<-sort_FC_OC_down[1:50,]
sort_FC_UD_down<-sort_FC_UD_down[1:50,]
write.table(sort_FC_OD_down,"sort_FC_OD_down.txt",sep="\t")
write.table(sort_FC_OD_up,"sort_FC_OD_up.txt",sep="\t")
write.table(sort_FC_UD_down,"sort_FC_UD_down.txt",sep="\t")
write.table(sort_FC_UD_up,"sort_FC_UD_up.txt",sep="\t")
write.table(sort_FC_OC_down,"sort_FC_OC_down.txt",sep="\t")
write.table(sort_FC_OC_up,"sort_FC_OC_up.txt",sep="\t")
