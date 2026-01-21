data(iris) #loading

?iris # about iris

head(iris)
str(iris)  #structure
View(iris)

class(iris) 

barplot(table(iris$Species)) # basic chart
barplot(
  table(iris$Species),
  main="Count of iris species",
  xlab="Species",
  ylab="No. of flowers",
  col="pink"
)  # coloured and labelled chart

# bar chart from aggregated data
# mean sepal length
mean_sepal <- tapply(iris$Sepal.Length,iris$Species,mean)
mean_sepal

barplot(
  mean_sepal,
  col="yellow",
  main="Average Sepal length by species",
  ylab="Mean Sepal Length",
  xlab="species"
)

# Grouped (Clustered)
#comparision of sepal and petal length
group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length,iris$Species,mean),
  Petal = tapply(iris$Petal.Length,iris$Species,mean)
)

barplot(
  group_means,
  beside=TRUE,
  col=c("skyblue", "pink"),
  legend.text = TRUE,
  main="Stacked Bar Chart: Sepal & Petal Lengths Comparision"
)

barplot(
  group_means,
  beside=FALSE,
  col=c("skyblue", "pink"),
  legend.text = TRUE,
  main="Stacked Bar Chart: Sepal & Petal Lengths Comparision"
)
# Show composition +total
# Harder to compare individual segments


group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length,iris$Species,mean),
  Petal = tapply(iris$Petal.Length,iris$Species,mean),
  Sepal_w = tapply(iris$Sepal.Width,iris$Species,mean),
  Petal_w = tapply(iris$Petal.Width,iris$Species,mean)
)

barplot(
  group_means,
  beside=TRUE,
  col=c("skyblue", "pink","orange","yellow"),
  legend.text = TRUE,
  main="Grouped Bar Chart of  Sepal & Petal Lengths Comparision"
)


barplot(
  group_means,
  beside=FALSE,
  col=c("skyblue", "pink","orange","yellow"),
  legend.text = TRUE,
  main="Stacked Bar Chart: Sepal & Petal Length"
)

