## <center>ASP自动打包脚本</center>

### 一、 bat 批处理文件

```
```

### 二、 pack.exe 可执行打包程序（有ASPPortal开发环境前提下，方可使用）
*注意：*
需确保原ASPPortal所有开发环境依赖已安装
<!-- 1.程序生成方法 

    * 安装依赖 pip install cx_Freeze
    * 执行 `python setup.py build` -->
1.解压 exe.win32-2.7.rar

    将exe.win32-2.7.rar解压获取pack.exe可执行文件

2.配置文件--exe.win32-2.7/config.json
```json
{
    "appname": {
        "taskApp":"task"
    },
    "domin": "git@10.0.32.99:",
    "targetpath": "asppack\\",
    "symlink": "E:\\stations\\ASPPortal\\node_modules"
}
```
*说明：*

1. 「`domin`」 gitlab 根地址
2. 「`targetpath`」 gitlab项目下载储存目录
3. 「`symlink`」 原ASPPortal开发环境 「`node_modules`」 连接地址
4. 「`appname`」 数据字典中 「`key`」 为gitlab中ssh地址中的项目名称 「`value`」 为最终将内置用户copy至ASPPortal内的文件夹名称