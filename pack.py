# -*- coding: utf-8 -*-

import config
import os
import shutil
from clone import CloneASPAndApp
from compile import CompileASPCode
from log import logger

class PackASP(object):
    def __init__(self):
        self.config = config.aspAutoPackConfig()
        self.cwdir = os.getcwd()
        self.compile = CompileASPCode()
        self.cloneAndpull = CloneASPAndApp()
        self.aspfolder = os.path.normpath(self.cwdir + "/" + self.config["targetpath"] + "ASPPortal")
    def compileASP(self,key):
        distpath = os.path.normpath(self.cwdir + "/" + self.config["targetpath"] + key)
        if(not os.path.exists(distpath)):
            # 如果文件夹不存在则重新克隆代码
            self.cloneAndpull.clone(self.config["domin"] + "frontend/" + key + ".git", self.config["targetpath"] + key)
        else:
            # 如果文件夹存在则拉取代码
            self.cloneAndpull.pullcode(distpath)
        self.compile.createASPslink(distpath)
        if(key=="ASPPortal"):
            os.chdir(self.aspfolder)
            os.popen("git checkout module").readlines()
            os.chdir(self.cwdir)
        self.compile.gulpCompileASPAndApp(distpath)
    def pack(self):
        # ASPPortal相关|
        self.compileASP("ASPPortal")
        os.chdir(self.aspfolder+"\\app\\")
        logs = os.system("yarn")
        logger.info(logs)
        os.chdir(self.cwdir)
        # ASPPortal相关|
        for key in self.config["appname"]:
            distpath = os.path.normpath(self.cwdir + "/" + self.config["targetpath"] + key)
            self.compileASP(key)
            os.chdir(self.cwdir)
            # 递归删除目录
            if(os.path.exists(os.path.join("asppack","ASPPortal","app\\shell",self.config["appname"][key]))):
                shutil.rmtree(os.path.join("asppack","ASPPortal","app\\shell",self.config["appname"][key]))
                shutil.rmtree(os.path.join("asppack","ASPPortal","app\\browser",self.config["appname"][key]))
            # 复制APP编译后目录到目标位置
            self.copyappsfile(distpath+"\\dist\\app.json",self.config["appname"][key],"app.json")
            self.copyappsfile(distpath+"\\dist\\index.js",self.config["appname"][key],"index.js")
            self.copyappfolder(os.path.join("asppack",key,"dist\\modules"),os.path.join("asppack","ASPPortal","app\\shell",self.config["appname"][key],"modules"))
            self.copyappfolder(os.path.join("asppack",key,"dist\\browser"),os.path.join("asppack","ASPPortal","app\\browser",self.config["appname"][key]))
        # 打包ASP工程
        os.chdir(self.aspfolder)
        logger.info("ASP packing...")
        os.system("npm run dist")
        logger.info("ASP pack success")
    def copyappsfile(self,p1,key,nm):
        mkd = self.aspfolder+"\\app\\shell\\"+key
        if(not os.path.exists(mkd)):
            os.mkdir(mkd)
        shutil.copyfile(p1, mkd+"\\"+nm)
    def copyappfolder(self,p1,p2):   
        shutil.copytree(p1, p2)


PackASP().pack()