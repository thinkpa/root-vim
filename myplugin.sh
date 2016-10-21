#!/bin/bash

#################################################################################
# Copyright (C) 2016 All rights reserved.										
#  文件名称：myplugin.sh															
*  创 建 者：kevin
*  邮    箱：zxw110@163.com
#  创建日期：2016年09月19日 星期一															
#  描    述：																	
#   																			
#  更新日志：																	
#   																		
#################################################################################

git submodule add http://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git submodule add https://github.com/msanders/snipmate.vim.git bundle/snipmate
git submodule add https://github.com/tpope/vim-surround.git bundle/vim-surround
git submodule add https://github.com/tpope/vim-git.git bundle/vim-git
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/sontek/minibufexpl.vim.git bundle/minibufexpl
git submodule add https://github.com/wincent/Command-T.git bundle/command-t
git submodule add https://github.com/mitechie/pyflakes-pathogen.git bundle/pyflakes-pathogen
git submodule add https://github.com/mileszs/ack.vim.git bundle/ack
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/fs111/pydoc.vim.git bundle/pydoc
git submodule add https://github.com/vim-scripts/pep8.git bundle/pep8
git submodule add https://github.com/alfredodeza/pytest.vim.git bundle/pytest
git submodule add https://github.com/reinh/vim-makegreen bundle/vim-makegreen
git submodule add https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/the-nerd-tree
git submodule add https://github.com/sontek/rope-vim.git bundle/rope-vim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

