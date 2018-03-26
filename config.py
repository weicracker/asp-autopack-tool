# -*- coding: utf-8 -*-

# 'ASP自动打包工具配置文件'
import json
from log import logger

def aspAutoPackConfig():
    logger.info("reading config file") 
    f = open("config.json")
    setting = json.load(f)
    return setting
