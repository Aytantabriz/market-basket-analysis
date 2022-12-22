# Apriori

# Data Preprocessing
# install.packages('arules')
install.packages('arules')
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
summary(dataset)
itemFrequencyPlot(dataset, topN = 15)

# Training Apriori on the dataset
rules = apriori(data = dataset, parameter = list(support = 0.01, confidence = 0.4))

# Visualising the results
inspect(sort(rules, by = 'support')[1:15])




