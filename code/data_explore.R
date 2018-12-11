#**************************************************
#数据探索
#************************************************

#**************************************************
#标签分析
#************************************************

#标签服从类正态分布，存在异常值
plot(density(data_train$target))
summary(data_train$target)
mean=mean(data_train$target)
sd=sd(data_train$target)

nrow(data_train[target< -11.94514 | target> 11.15786])  #需要删除部分异常值 2263例

nrow(data_train) #总样本201917例

#first_active_month 卡片使用情况
table(data_train$first_active_month) #最早2011-11月开始使用、最晚2018年02月份开始使用，用户主要激活时间在2016-2017年

## feayure 1-3 为卡片分类信息
#feature_1
table(data_train$feature_1)  #含1-5个分类 分别含有12037 55797 73573 19885 40625 人
boxplot(target~feature_1,data_train,ylim=c(-1,1)) #与目标值无明显关系，类型3方差最大

#feature_2
table(data_train$feature_2) #含1-3个分类，分别有89242 74839 37836  人
boxplot(target~feature_2,data_train,ylim=c(-1,1)) #与目标值无明显关系，分类1均值大，方差小

#feature_3
table(data_train$feature_3) #含1-2个分类，分别为87719 114198 人
boxplot(target~feature_3,data_train,ylim=c(-1,1)) #与目标值无明显关系，分类1方差大，均值小




#**************************************************
#标签分析
#************************************************