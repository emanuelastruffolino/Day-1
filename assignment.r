###############################
####Lesson 1 - Assignment 1####
###############################

# Starting with R and TraMineR #

rm(list=ls()) 

library (TraMineR)

#Look at the help page of biofam data
?biofam
#Load biofam data
data(biofam)
#Look at the first six rows of the data frame
head(biofam)

#Create the state sequence object
biofam.seq<- seqdef(biofam [,10:25])
biofam.seq[1:2,]

#Plot all sequences sorted
seqIplot(biofam.seq, sortv="from.end")

#Plot the ten most frequent sequences
seqfplot(biofam.seq)

#Plot the sequence transversal distribution
seqdplot(biofam.seq, border=NA)

#Display the first 10 sequences in extended form
print(biofam.seq[1:10,])
#Display the first 10 sequences in compact form
print(biofam.seq[1:10,], format="SPS")
