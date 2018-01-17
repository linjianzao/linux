<a href="http://jingyan.baidu.com/article/948f5924259516d80ef5f95e.html">来源</a>
1.mysqldump的几种常用方法：

（1）导出整个数据库(包括数据库中的数据）

    mysqldump -u username -p dbname > dbname.sql    

（2）导出数据库结构（不含数据）

    mysqldump -u username -p -d dbname > dbname.sql    

（3）导出数据库中的某张数据表（包含数据）

    mysqldump -u username -p dbname tablename > tablename.sql    

（4）导出数据库中的某张数据表的表结构（不含数据）

    mysqldump -u username -p -d dbname tablename > tablename.sql   
