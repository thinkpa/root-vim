这里我仅仅提供dynamic文件夹里面的，common文件夹时间不能变，不适合我自己的习惯

下面这行代码是显示日期用的，我们需要在template文件夹内建立一个datetime.sh的脚本，需提供它执行权限。具体为sudo chmod +x  $HOME/.vim/template/datetime.sh.

因为我们把插件和模板都放在.vim文件内。




[html] view plain copy

 01.#!/bin/bash  
02.# 将时间函数作为共享使用  
03.datetime_zh()  
04.{  
05.    WEEKDAYS=(星期日 星期一 星期二 星期三 星期四 星期五 星期六)  
06.    WEEKDAY=$(date +%w)  
07.    #DT="$(date +%Y年%m月%d日) ${WEEKDAYS[$WEEKDAY]}"  
08.    YY=$(date +%Y)  
09.    MN=$(date +%m)  
10.    DN=$(date +%d)  
11.    DT="$YY年$MN月$DN日 ${WEEKDAYS[$WEEKDAY]}"  
12.    echo "$DT"  
13.}  
14.datetime_zh  
15.export datetime_zh  

 以下为dynamic文件夹里的模板文件，因为也是bash实现的，我们需要给它们执行权限。这里我只提供ext文件下的后缀匹配模板，全名匹配可以参考自己弄。一般都用不到的。 




c类型的：




[html] view plain copy

 01.#!/bin/bash  
02.# Generate template content for a c/c++ header file.  
03.# usage: $0 <filename>  
04.[ -z "$1" ] && exit 1  
05.  
06.head_def=`echo __${1}__ | tr "a-z.-" "A-Z__"`  
07.filename=`echo ${1}`  
08.date_path=$HOME'/.vim/template/dynamic'  
09.datetime=`bash $date_path'/datetime.sh'`  
10.year=`date +%Y`  
11.  
12.cat << EOF  
13./********************************  
14.* Copyright (C) $year All rights reserved.  
15.*  文件名称：$filename  
16.*  创 建 者：沈石伟  
17.*  邮    箱：shenshiwei007@gmail.com  
18.*  创建日期：$datetime  
19.*  描    述：  
20.*     
21.*  更新日志：  
22.*     
23.********************************/  
24.  
25.#include<stdio.h>  
26.EOF  

 cpp类型的： 




[html] view plain copy

 01.#!/bin/bash  
02.# Generate template content for a c/c++ header file.  
03.# usage: $0 <filename>  
04.[ -z "$1" ] && exit 1  
05.  
06.head_def=`echo __${1}__ | tr "a-z.-" "A-Z__"`  
07.filename=`echo ${1}`  
08.date_path=$HOME'/.vim/template/dynamic'  
09.datetime=`bash $date_path'/datetime.sh'`  
10.year=`date +%Y`  
11.cat << EOF  
12./********************************  
13.* Copyright (C) $year All rights reserved.  
14.*  文件名称：$filename  
15.*  创 建 者：沈石伟  
16.*  邮    箱：shenshiwei007@gmail.com  
17.*  创建日期：$datetime  
18.*  描    述：  
19.*     
20.*  更新日志：  
21.*     
22.********************************/  
23.  
24.#include<iostream>  
25.  
26.using namespace std;  
27.  
28.EOF  




h类型的： 



[html] view plain copy

 01.#!/bin/bash  
02.# Generate template content for a c/c++ header file.  
03.# usage: $0 <filename>  
04.[ -z "$1" ] && exit 1  
05.  
06.head_def=`echo __${1}__ | tr "a-z.-" "A-Z__"`  
07.filename=`echo ${1}`  
08.date_path=$HOME'/.vim/template/dynamic'  
09.datetime=`bash $date_path'/datetime.sh'`  
10.year=`date +%Y`  
11.  
12.cat << EOF  
13.#ifndef $head_def  
14.#define $head_def  
15.  
16./********************************  
17.* Copyright (C) $year All rights reserved.  
18.*  文件名称：$filename  
19.*  创 建 者：沈石伟  
20.*  邮    箱：shenshiwei007@gmail.com  
21.*  创建日期：$datetime  
22.*  描    述：  
23.*     
24.*  更新日志：  
25.*     
26.********************************/  
27.  
28.#endif    // #ifndef   
29.EOF  

 hpp类型的： 




[html] view plain copy

 01.#!/bin/bash  
02.# Generate template content for a c/c++ header file.  
03.# usage: $0 <filename>  
04.[ -z "$1" ] && exit 1  
05.  
06.head_def=`echo __${1}__ | tr "a-z.-" "A-Z__"`  
07.filename=`echo ${1}`  
08.date_path=$HOME'/.vim/template/dynamic'  
09.datetime=`bash $date_path'/datetime.sh'`  
10.year=`date +%Y`  
11.  
12.cat << EOF  
13.#ifndef $head_def  
14.#define $head_def  
15.  
16./********************************  
17.* Copyright (C) $year All rights reserved.  
18.*  文件名称：$filename  
19.*  创 建 者：沈石伟  
20.*  邮    箱：shenshiwei007@gmail.com  
21.*  创建日期：$datetime  
22.*  描    述：  
23.*     
24.*  更新日志：  
25.*     
26.********************************/  
27.  
28.#endif    // #ifndef   
29.EOF  

 html类型的： 




[html] view plain copy

 01.#!/bin/bash  
02.#用于python文件头生成  
03.[ -z "$1" ] && exit 1  
04.  
05.date_path=$HOME'/.vim/template/dynamic'  
06.datetime=`bash $date_path'/datetime.sh'`  
07.filename=`echo ${1}`  
08.year=`date +%Y`  
09.  
10.cat << EOF  
11.<!--  
12./********************************  
13.* Copyright (C) $year All rights reserved.  
14.*  文件名称：$filename  
15.*  创 建 者：沈石伟  
16.*  邮    箱：shenshiwei007@gmail.com  
17.*  创建日期：$datetime  
18.*  描    述：  
19.*     
20.*  更新日志：  
21.*     
22.********************************/   
23.-->  
24.<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
25.<html xmlns="http://www.w3.org/1999/xhtml">  
26.    <head>  
27.        <title> new document </title>  
28.        <meta name="generator" content="" />  
29.        <meta name="author" content="" />  
30.        <meta name="keywords" content="" />  
31.        <meta name="description" content="" />  
32.    </head>  
33.  
34.    <body>  
35.  
36.    </body>  
37.</html>  
38.  
39.EOF  

 py类型的： 




[html] view plain copy

 01.#!/bin/bash  
02.#用于python文件头生成  
03.[ -z "$1" ] && exit 1  
04.  
05.date_path=$HOME'/.vim/template/dynamic'  
06.datetime=`bash $date_path'/datetime.sh'`  
07.filename=`echo ${1}`  
08.year=`date +%Y`  
09.  
10.cat << EOF  
11.#coding=utf-8  
12.#********************************  
13.# Copyright (C) $year All rights reserved.  
14.#  文件名称：$filename  
15.#  创 建 者：沈石伟  
16.#  邮    箱：shenshiwei007@gmail.com  
17.#  创建日期：$datetime  
18.#  描    述：  
19.#     
20.#  更新日志：  
21.#     
22.#********************************  
23.  
24.#!/usr/bin/env python  
25.from pylab import *  
26.    
27.myfont = matplotlib.font_manager.FontProperties(fname='/usr/share/fonts/truetype/wqy/wqy-microhei.ttc')    
28.mpl.rcParams['axes.unicode_minus'] = False    
29.  
30.EOF  




sh类型的：


[html] view plain copy

 01.#!/bin/bash  
02.#用于python文件头生成  
03.[ -z "$1" ] && exit 1  
04.  
05.date_path=$HOME'/.vim/template/dynamic'  
06.datetime=`bash $date_path'/datetime.sh'`  
07.filename=`echo ${1}`  
08.year=`date +%Y`  
09.  
10.cat << EOF  
11.#!/bin/bash  
12.  
13.#################################################################################  
14.# Copyright (C) $year All rights reserved.                                        
15.#  文件名称：$filename                                                             
16.#  创 建 者：沈石伟                                                                  
17.#  邮    箱：shenshiwei007@gmail.com                                     
18.#  创建日期：$datetime                                                             
19.#  描    述：                                                                    
20.#                                                                                 
21.#  更新日志：                                                                      
22.#                                                                             
23.#################################################################################  
24.  
25.  
26.EOF  

 txt类型的： 



[html] view plain copy

 01.#!/bin/bash  
02.# Generate template content for a c/c++ header file.  
03.# usage: $0 <filename>  
04.[ -z "$1" ] && exit 1  
05.  
06.head_def=`echo __${1}__ | tr "a-z.-" "A-Z__"`  
07.filename=`echo ${1}`  
08.date_path=$HOME'/.vim/template/dynamic'  
09.datetime=`bash $date_path'/datetime.sh'`  
10.year=`date +%Y`  
11.  
12.cat << EOF  
13./********************************  
14.* Copyright (C) $year All rights reserved.  
15.*  文件名称：$filename  
16.*  创 建 者：沈石伟  
17.*  邮    箱：shenshiwei007@gmail.com  
18.*  创建日期：$datetime  
19.*  描    述：  
20.*     
21.*  更新日志：  
22.*     
23.********************************/  
24.  
25.  
26.EOF  




其实大多数的代码都是一样的，防止自己电脑那天坏掉了，直接全部就行了。所以我把所有代码都弄过来了。









因为我用python基本用在科学计算上，因为matplotlib显示中文乱码，需要设置字体。网上说的修改它的配置文件，还有转换字体，都没有成功过，只好使用这种方法了。






