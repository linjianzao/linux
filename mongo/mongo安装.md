# mongo_book
<h4>ubuntu安装:</h4>
<code>
sudo apt-get install mongodb
</code>
<br><br>

<h4>测试:</h4>
<code>mongo</code>
<br><br>

<h4>配置文件</h4>
<code>
都是默认在etc下面的
vim /etc/mongodb.conf
</code>
<br><br>

<h4>启动和关闭</h4>
<pre><code>关闭:sudo service mongodb stop
启动:sudo service mongodb start
</code></pre>
<br><br>
<h3>常用命令</h3>

<table>
<tr>
  <td>命令</td>
  <td>说明</td>
</tr>
<tr>
  <td>show dbs;</td>
  <td>查看库</td>
</tr>
<tr>
  <td>use somedb;</td>
  <td>使用或者创建某个库</td>
</tr>
<tr>
  <td>show collection;</td>
  <td>查看集合</td>
</tr>
<tr>
  <td>db.createCollection("my")</td>
  <td>创建集合my</td>
</tr>

<tr>
  <td>db.my.insert({"name":"linjianzao",job:"golang"})</td>
  <td>插入</td>
</tr>

<tr>
  <td>db.my.find({"name":"linjianzao"})</td>
  <td>查询</td>
</tr>

<tr>
  <td>db.my.find({"name":"linjianzao"}).sort({"name":-1})</td>
  <td>排序</td>
</tr>

<tr>
  <td>db.my.find().limit(1)</td>
  <td>限制记录数</td>
</tr>

<tr>
  <td>db.my.find({name:"linjianzao","job":"python"})</td>
  <td>and查询</td>
</tr>

<tr>
  <td>db.my.find({$or:[{name:"linjianzao"},{"job":"python"}]})</td>
  <td>or查询</td>
</tr>
<tr>
  <td>db.my.find({"age":{$gt:10}})</td>
  <td>大于查询</td>
</tr>

<tr>
  <td>db.my.find({"age":{$gte:10}})</td>
  <td>大于等于查询</td>
</tr>

<tr>
  <td>db.my.find({"age":{$lt:10}})</td>
  <td>小于查询</td>
</tr>

<tr>
  <td>db.my.find({"age":{$lte:10}})</td>
  <td>小于等于查询</td>
</tr>

<tr>
  <td>db.my.find({"name":/569c7ffa94787d2499a3ef41/})</td>
  <td>模糊查询(正则)</td>
</tr>


<tr>
  <td>db.my.update({name:"linjianzao"},{$set:{"job":"python"}})</td>
  <td>更新一个</td>
</tr>

<tr>
  <td>db.my.update({"job":"python"},{$set:{name:"linjianzao"}},{multi:true})</td>
  <td>更新多个</td>
</tr>

<tr>
  <td>db.my.save({name:"linjianzao",job:"golang"})</td>
  <td>插入或更新</td>
</tr>

<tr>
  <td>db.my.find({"age":18})</td>
  <td>删除文档</td>
</tr>

<tr>
  <td>db.my.remove()</td>
  <td>删除所有文档</td>
</tr>

<tr>
  <td>db.dropDatabase()</td>
  <td>删除库</td>
</tr>

<tr>
  <td>help</td>
  <td>帮助</td>
</tr>
</table>

[更多信息查看](http://www.yiibai.com/mongodb/)<br><br>
[官方文档](https://docs.mongodb.org/manual/)



