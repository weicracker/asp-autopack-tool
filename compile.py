# -*- coding: utf-8 -*-

import os
import config
from log import logger


class CompileASPCode(object):
    '编译ASP相关代码'

    def __init__(self):
        self.config = config.aspAutoPackConfig()
        self.cwdir = os.getcwd()
        self.aspfolder = os.path.normpath(self.cwdir + "/" + self.config["targetpath"] + "ASPPortal")
    def createASPslink(self,dst):
        logger.info(dst+"--mklink creating")
        os.popen("mklink /J "+dst+"\\node_modules "+self.config["symlink"])
        print dst+"--mklink create success"
    def gulpCompileASPAndApp(self,path):
        os.chdir(path)
        logger.info(path+"--compiling")
        try:
            logs = os.system("yarn run build")
            logger.info(logs)
        except:
            logger.warning("running error")
        else:
            logger.info("running success")
        logger.info(path+"--compile success")

    # def compileApp(self):
