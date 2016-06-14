# BNU Thesis Pandoc

使用Pandoc Markdown和LaTeX写北师大毕业论文。

# 用法

## 前置安装

1. 安装最新版的texlive和pandoc，以debian为例，执行`apt-get install texlive-xetex texlive-lang-chinese pandoc`。
2. 安装以下必需的字体，可以从[这里](http://pan.baidu.com/s/1eQsZ5zs)下载：

```
 Adobe Fangsong Std,Adobe 仿宋 Std,Adobe Fangsong Std R,Adobe 仿宋 Std R
 Adobe Heiti Std,Adobe 黑体 Std,Adobe Heiti Std R,Adobe 黑体 Std R
 Adobe Kaiti Std,Adobe 楷体 Std,Adobe Kaiti Std R,Adobe 楷体 Std R
 Adobe Song Std,Adobe 宋体 Std,Adobe Song Std L,Adobe 宋体 Std L
 Arial
 Courier New
 FangSong,仿宋
 KaiTi,楷体
 LiSu,隶书
 NSimSun,新宋体
 SimHei,黑体
 SimSun,宋体
 Times New Roman
 YouYuan,幼圆
```
## 使用

* `src/`文件夹下存放了多个文件夹，每个文件夹代表一个project也就是一篇论文，其中包含了生成一篇论文所需要的各种源文件（以下以`xxx`为例）。`thesis.md`为论文正文，`ref.bib`为引用的文献（使用bibtex，知网和谷歌学术可以直接复制出bib格式的引用），`figures/`文件夹存放的是引用的图片。
* 论文标题、姓名、专业、导师等基本信息，请修改`src/xxx/info.tex`
* 论文摘要，请修改`src/xxx/abstract.tex`
* 致谢信息，请修改`src/xxx/ack.tex`
* 编辑完之后，**执行`make xxx`命令即可构建pdf**，生成的pdf存放于`dist`文件夹下。

# 说明

## 致谢

感谢[@raytaylorlin](https://github.com/raytaylorlin/)，本项目参考了其[hust-graduation-thesis-pandoc](https://github.com/raytaylorlin/hust-graduation-thesis-pandoc)。由于原项目使用nodejs实现，环境部署较为复杂，本项目用Makefile将主要命令重新包装了一下。

感谢[@gerry](http://gerry.lamost.org/blog/)提供的[北师大学位论文Latex模板](http://gerry.lamost.org/blog/?p=811)，本项目基于[1.53版](http://gerry.lamost.org/upload/rar/bnuthesis_1.53.zip)，将其模板解包之后进行略微的修改而成。

## 测试环境

* debian Stretch
* pandoc 1.16.0.2
* XeTeX 3.14159265-2.6-0.99992 / BibTeX 0.99d (TeX Live 2015/Debian)
