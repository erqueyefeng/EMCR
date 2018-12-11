#**************************************************
#数据读取
#************************************************
source(file = 'code/data_source.R')
data_historical_transactions <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/historical_transactions.csv')
data_new_merchant_transactions <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/new_merchant_transactions.csv')
data_merchants <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/merchants.csv')
data_sample_submission <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/sample_submission.csv')
data_test <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/test.csv')
data_train <-fread(file='/Users/jiangdehao/Desktop/project/kaggle/EMCR/data/train.csv')
