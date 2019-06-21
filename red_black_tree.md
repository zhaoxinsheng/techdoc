## 理解红黑树

[[toc]]

## 1.简介
红黑树是一棵二叉搜索树，每个节点有一个标志位表示颜色，该颜色可以是红(RED)或黑(BLACK)。通过对任何一条从根到叶子的简单路径上各点的颜色进行约束，就能确保没有一条路径会比其他路径长出2倍，因而是近似于平衡的。

#### 红黑树每个节点有5个属性    
-  color         颜色
-  key           关键字
-  leftChild     左孩子
-  rightChild    右孩子
-  parent        父亲

    如果一个节点没有子节点或父节点，则该节点的leftChild，rightChild，parent指针指向NIL。
    这些NIL视为二叉搜索树的外部节点，其他节点为内部节点。

![图片描述](/tfl/pictures/201901/tapd_20023881_1547198886_81.png)

#### 一棵红黑树有如下性质
1. 每个节点或是红色，或是黑色；
2. 根节点是黑色的；
3. 每个叶节点（NIL节点）是黑色的；
4. 如果一个节点是红色的，则它的两个子节点都是黑色的；
5. 对每个节点，从该节点到其所有后代叶节点的简单路径上，均包含相同数目的黑色节点。
 
![图片描述](/tfl/pictures/201901/tapd_20023881_1547198903_65.png)

我们可以把NIL看成哨兵T.nil，它的color是黑色，其他属性任意。如图(b)；

![图片描述](/tfl/pictures/201901/tapd_20023881_1547198920_49.png)

## 2.预备知识

###### 左旋
![图片描述](/tfl/pictures/201901/tapd_20023881_1547198999_58.gif)

###### 右旋
![图片描述](/tfl/pictures/201901/tapd_20023881_1547199030_14.gif)

###### 示例
    在做新增删除节点时，可能会违反红黑树性质，为了维护性质，必须改变树中某些节点的颜色和指针结构，（图中有误，左旋时 _节点11_ 和 _节点18_ 颜色应该互换）
![图片描述](/tfl/pictures/201901/tapd_20023881_1547199054_54.png)

## 3.新增+
插入的新元素都是红色，这样只会影响性质2和性质4，其他性质都不改变

###### 插入新元素时会出现的情况
> 情况1: 父节点为黑色
> 情况2: 父节点为红色 & 叔叔节点为红色
> 情况3: 父节点为红色 & 叔叔节点为黑色

#### 情况1: 父节点为黑色
    新增节点10, 不破坏任何性质，结束
![图片描述](/tfl/pictures/201901/tapd_20023881_1547199084_61.png)

#### 情况2: 父节点为红色 & 叔叔节点为红色

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199103_24.png)

    父亲和叔叔的颜色变为黑色，祖父颜色变为红色，将祖父做为当前节点继续向上修正

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199127_22.png)

#### 情况3: 父节点为红色 & 叔叔节点为黑色
    分为父亲左子孩子，还是孩子两种情况
![图片描述](/tfl/pictures/201901/tapd_20023881_1547199147_24.png)

## 4.删除-

###### 删除元素时会出现的情况
> 情况1: 节点既有左子树又有右子树
> 情况2: 节点只有左子树或只有右子树
> 情况3: 节点既没有左子树又没有右子树(节点是叶节点或根)
#### 情况1：节点既有左子树又有右子树
     我们首先要找到该节点的前驱或后继节点, 使用中序遍历的后继节点的值覆盖待删除节点的值,然后将后继节点删除,  __这时情况1转为情况2或者3__ ，此时前驱或者后继节点顶多有一个子节点.

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199170_92.png)

下面待删除节点用节点**X(Delete)**表示，如果删除的节点是黑色，则需要修正.
#### 情况2：节点只有左子树或只有右子树
    现在可以有以下几种情况：

- 情况2-1: 节点X是红色 – 不存在
- 情况2-2: 节点X是黑色 & 其孩子节点是黑色 – 不存在
- 情况2-3: 节点X是黑色 & 其孩子节点是红色 - 存在

解决方法：**简单删除将删除节点孩子替换节点X，颜色染为黑色即可**

#### 情况3：节点既没有左子树又没有右子树(节点是叶节点或根)
- 情况3-1: 节点X是红色 - 删除即可不需调整
- 情况3-2: 节点X是黑色 - 又分为四种情况：删除X，将X指向原X的子节点（当前应为哨兵节点）

下面重点说3.2的四种情况

###### 3.2.1. X的兄弟节点是红色

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199201_67.jpg)

###### 3.2.2. X的兄弟节点w是黑色，而且w的两个子节点都是黑色

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199213_45.jpg)

###### 3.2.3. X的兄弟节点w是黑色，而且w的左孩子是红色，右孩子是黑色

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199219_82.jpg)

###### 3.2.4. X的兄弟节点w是黑色，而且w的左孩子是黑色，右孩子是红色

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199226_25.jpg)


    其中，情况1左旋后可以转为2、3、4
    情况1、2可能会引起循环重复
    情况3右旋后转为4

## 5.分析比较
##### 时间复杂度
    新增O(lgN) 删除O(lgN) 查询O(lgn)
##### VS B+树
    树高更小；
    所有叶子节点都在同一层，叶子节点会有一个指针串联；
    值全部存储在叶子节点中，这样索引占的空间更小，适用于磁盘存储

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199246_24.png)

##### VS 跳表
###### 原理
有序列链表

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199259_65.jpg)

添加1层索引

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199270_86.jpg)

添加2层索引

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199280_40.jpg)

查询

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199334_5.jpg)

新增

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199351_82.jpg)

删除

![图片描述](/tfl/pictures/201901/tapd_20023881_1547199369_60.jpg)

    修改查询的复杂度与红黑树相同，不过实现简单，且适合做范围查询