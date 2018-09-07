library(rio)
library(mlr)


train = import("./data/train.csv")
test = import("./data/test.csv")

task_train = makeClassifTask(data = train, target = "label")
task_train

p = .7
train_ind = 1:(42000 * p)
test_ind = (42000 * p + 1):42000


image(t(matrix(as.numeric(as.vector(train[1, -1])), nrow = 28, byrow = T)),
      ylim = c(1, 0))
