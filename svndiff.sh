#!/bin/bash
# Copyright (c) 2015 Bemetoy.com, Inc. All rights reserved.
# Author: Junhui Huang<huangjunhui@gmail.com>
# Created Time: 2016-06-13 10:26:16
# Last Modified: 2016-06-13 10:41:18
# File Name: /data/home/junhui/bin/svndiff.sh
# Description: 

DIFF="vimdiff"
LEFT=${6}
RIGHT=${7}
$DIFF -f $LEFT $RIGHT
