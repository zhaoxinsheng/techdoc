#<font size=5>happens-before：描述内存可见性</font>

#as-if-serial:无论怎么重排序，程序的运行结果不会改变

#当线程释放锁时，JMM会把该线程对应的本地内存中的共享变量刷新到主内存中，也就是说，对某个对象的加锁，锁释放后影响的是全部的本地内存共享变量 

#ReentrantLock依赖了队列同步器AQS,其实现方式是volatile变量的读写操作进行线程间通信，通过CAS修改state值，成功，其state值>0，则取锁成功

#ConcurrentHashMap:有一个Segment的数组，它继承了ReentrantLock可重入锁的功能，在put时，通过hash及rehash，再取模确定Segment的index，Segment中有HashEntry数组，才是保存key,value的地方，通过put等修改操作修改mod，计算总数时，在mod不变时不加锁计算，发现mod变化后，加锁计算

#DelayQueue,可以保存有效期，可用来实现缓存过期清理

#Fork/Join,大任务切分子任务，再聚合结果

#CountDownLatch，等待其他先出完成操作，可用来提示任务结束等

#CyclicBarrier,等待多个线程到达同一个屏障后，再一起往下仔细，有reset方法，可重试

#Semaphore作为信号量，可控制线程数量，用来管理有限的资源访问


#多路复用器监听某个端口的事件，把就绪的事件选择集合进行I/O操作

#ChannelPipeline：Channel数据管道，消息在其中流动传递，就像Filter链表一样，其上可以绑定channelHandler，它是线程安全的,可动态增删handler

#Reactor多线程模型:一个NIO线程辅助监听服务端，接受TCP请求网络IO操作有一个线程池负责

#Reactor主从多线程模型:Acceptor:一个NIO线程池负责监听服务端，sub reactor一个线程池负责IO

#netty对网络闪断等问题已经优化，不会造成资源没有关闭，对业务异常进行拦截

#ServerHandler、ClientHandler都是ChannelInBoundChannel,可以读取数据

#redis备份rdb\aof ,bgSave,重写aof

#byteBuffer position,limit

#作者写出了一些技术重点，希望能补充完整后 上传

[source link 来源出处] https://www.cnblogs.com/windliu/p/6639664.html
 