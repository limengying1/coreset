# coreset
Ensemble_prototype2.m  wasserstein重心的计算函数，

Coreset.m    coreset的构造函数，输入原始数据信息、要构造的coreset大小、emd的计算算法，返回coreset的数据信息

Uniform.m  均匀随机采样函数，与coreset进行实验对比

Distance1.m  计算两个点集的距离矩阵

Assignment1.m 两个点集,匈牙利算法下的分配方案

Assignsum.m 两个点集,匈牙利算法下的距离

DrawPoint.m  生成合成数据集时用到的函数

FunK_meanPolyD.m 带权重的数据集的k-means聚类函数

generate_data_GMM.m 生成多组多维高斯分布数据

Kmeans_plus_plus.m kmeans++函数

k_means.m 普通的k_means函数

Network.m network算法计算wasserstein距离,调用maintest函数

Sinkhorn.m sinkhorn算法计算wasserstein距离,调用Transport函数

Train_images.m 加载以及提取图像数据的信息

Train_labels.m 加载以及提取图像数据的标签类型

Mainalg1.m 主函数 划分数据以及生成新的k-重心

Test1.m 对已知类别的每个类计算重心,作为真实解.衡量聚类效果

Png.m  对实验结果画图的源文件

Data_syn.mat 合成数据集

data_minist.mat  minist数据集

Data_cifar.mat cifar数据集

Data_cifark10.mat     三个色分别计算，相当于三个不相关的通道

Train_x.mat 分别代表数据信息及标签类型 

Train_y.mat  加载以及提取图像数据的标签类型


Main.py 提取音频特征 

Diarization2 对比算法 根据提取的特征(时域和频域)直接进行kmeans聚类 py37运行

Mainalg1.m k-聚类主函数 划分数据以及生成新的k-重心


test.m  强凸问题，包含参数设置（目标函数，等式约束，不等式约束）, 梯度下降计算（返回迭代轮数，运行时间，计算的解，目标函数值（观测每轮的值，发现是收敛的））解调用cvx.m

Mainalg3.m 时序分布优化的主函数 更新新的时序分布
