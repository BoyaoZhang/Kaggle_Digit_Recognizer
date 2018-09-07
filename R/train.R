load("./R/preprocess.R")

lrn_nnet = makeLearner("classif.nnet", predict.type = "prob",
                       size = 2,
                       MaxNWts = 10000)

mod_nnet = train(lrn_nnet, task_train, subset = train_ind)
