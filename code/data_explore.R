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
#预测样本分析
#************************************************
table(data_test$first_active_month) #预测样本首次借款时间分布与训练样本一致

table(data_test$feature_1) #7406 34115 44719 12332 25051 

table(data_test$feature_2) #54775 45993 22855 

table(data_test$feature_3) #53853 69770 


#**************************************************
#data_merchants 样本分析
#************************************************
hist(data_merchants[,merchant_group_id])
table(data_merchants[,merchant_group_id]) #主要击中在类别35\434\419\713\3648, 35占13%

hist(data_merchants[,merchant_category_id])
sort(table(data_merchants[,merchant_category_id]),T) #705\278\307\367\68\80\222\884\683\560\422\506等类别居多，数据分布较均

hist(data_merchants[,subsector_id])
sort(table(data_merchants[,subsector_id]),T) #27、37、33、34、21、29、19、16、18等类别居多，类目较少，40类

plot(density(data_merchants[,numerical_1]),xlim=c(-1,5))#数据严重拖尾，但大部分集中在0附近

plot(density(data_merchants[,numerical_2]),xlim=c(-1,5))#数据严重拖尾，但大部分集中在0附近

table(data_merchants[,category_1])  # 二元分类327657   7039 

table(data_merchants[,most_recent_sales_range])  #多分类A-E  1005   5037  34075 117475 177104 

table(data_merchants[,most_recent_purchases_range])  #多分类 A－E 1010   5046  34144 119187 175309

plot(density(data_merchants[,avg_sales_lag3],na.rm = T),xlim=c(-100,5000)) # 含负值(只有一个-80，还有少数接近0的负数)，大部分在2以下，但是有少数极大的值，最大值851800
boxplot(data_merchants[,avg_sales_lag3],ylim=c(0,2))

summary(data_merchants[,avg_purchases_lag3])
plot(density(data_merchants[,avg_purchases_lag3],na.rm = T),xlim=c(-10,500)) # 大部分在100以下，但是有少数极大的值，最大值INF

table(data_merchants[,active_months_lag3]) #1\2\3  538    896 333262 


summary(data_merchants[,avg_sales_lag6])
plot(density(data_merchants[,avg_sales_lag6],na.rm = T),xlim=c(-100,5000)) # 含负值(只有一个-80，还有少数接近0的负数)，大部分在2以下，但是有少数极大的值，最大值1514000
boxplot(data_merchants[,avg_sales_lag6],ylim=c(0,2))

summary(data_merchants[,avg_purchases_lag6])
plot(density(data_merchants[,avg_purchases_lag6],na.rm = T),xlim=c(-10,500)) # 大部分在100以下，但是有少数极大的值，最大值INF

table(data_merchants[,active_months_lag6]) #1\2\3\4\5\6  538    896   1652   2050   2276 327284 



summary(data_merchants[,avg_sales_lag12])
plot(density(data_merchants[,avg_sales_lag6],na.rm = T),xlim=c(-100,5000)) # 含负值(只有一个-80，还有少数接近0的负数)，大部分在2以下，但是有少数极大的值，最大值2567000
boxplot(data_merchants[,avg_sales_lag6],ylim=c(0,2))

summary(data_merchants[,avg_purchases_lag12])
plot(density(data_merchants[,avg_purchases_lag12],na.rm = T),xlim=c(-10,500)) # 大部分在100以下，但是有少数极大的值，最大值INF

table(data_merchants[,active_months_lag12]) #1\2\3\4\5\6\7\8\9\10\11\12  538    896   1652   2050   2276   2737   3274   3756   3824   4143   4449 305101

table(data_merchants[,category_4])  #二元变量 N Y  238596  96100 

table(data_merchants[,city_id])  #大部分为－1  105184

table(data_merchants[,state_id])  #大部分为－1 11887

table(data_merchants[,category_2])  #存在缺失值 1、2、3、4、5  160888  20661  51887  36450  52923 



#**************************************************
#data_new_merchant_transactions 新商户交易
#************************************************








