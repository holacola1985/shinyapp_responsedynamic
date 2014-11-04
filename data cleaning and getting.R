allxMatrix <- data.matrix(data_merged_trajactory_X_Wii)
allyMatrix <- data.matrix(data_merged_trajactory_Y_Wii)
allsub <- data.matrix(data_merged_without_prac_correct_order_Wii$Subject)
alltrial <- data.matrix(data_merged_without_prac_correct_order_Wii$Trial)

source('matsplitter.R')
allxSubMatrix <- matsplitter(allxMatrix,46,2069)
allySubMatrix <- matsplitter(allyMatrix,46,2069)
allSubNum <- matsplitter(allsub,46,1)
allTrialNum <- matsplitter(alltrial,46,1)

l <- list(allSubNum,allTrialNum, allxSubMatrix,allySubMatrix)
dir.create('Desktop/STA 504 Advanced Data Visulization/shinyapp//Response Dynamics/data')
saveRDS(l, "./Desktop/STA 504 Advanced Data Visulization/shinyapp/Response Dynamics/data/trajactory.rds")
l[[4]][, , 1]
str(l)
l[[3]][1, ,1][1:1000]
l[[4]][1, ,1][1:1000]
dim(l[[3]])

x <- l[[3]][1, ,1]
x
y <- l[[4]][1, ,1]
y
class(y)
length(y)
x <- x[!is.na(x)]
y <- y[!is.na(y)]
x
y
length(x) 
length(y)
df <- data.frame(x,y)
df
str(df)
names(df) <- c('xcoor', 'ycoor')
str(df)
p <- ggplot(df, aes(x=xcoor, y=ycoor))
p + geom_line()
