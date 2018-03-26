# -*- coding: utf-8 -*-

import config
import os
from log import logger

class CloneASPAndApp(object):
    '此文件为克隆ASP基础架构及ASP内置APP工程'

    def __init__(self):
        self.config = config.aspAutoPackConfig()
        self.cwdir = os.getcwd()

    def clone(self, path, dir):
        # 克隆git服务器项目代码
        logger.info("cloning git project " + dir)
        os.popen("git clone " + path + " " + dir)
        logger.info("clone git project finish " + dir)
        # return True

    def pullcode(self, dir):
        logger.info(" git pull project " + dir)
        os.chdir(dir)
        os.popen("git pull")
        os.chdir(self.cwdir)
        logger.info(" git pull project finish " + dir)
# print CloneASPAndApp().config
