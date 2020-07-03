# hook

#### 使用方法
1. 在linxu服务器上安装好 ```git``` ```maven ``` ```jdk```
2. 拉取hook项目到linux本地
3. 为```start.sh``` 和 ```shutdown.sh``` 添加运行权限
4. 运行 ```start.sh```，项目监听8080端口，检查有没有启动成功
5. 在```github```你的项目配置界面```webhook```上添加监听接口```/ci/get```，此时更新你的项目代码，服务器就会通过此接口收到请求

```*``` 第一次启动的时间可能比较长、主要原因是maven包的下载<br/>
```*``` 启动过程可能需要配置git，如果你之前没有配置好的话 11