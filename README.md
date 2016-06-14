# BNU Thesis Pandoc

使用Pandoc Markdown和LaTeX写北师大毕业论文。

# 用法

## 前置安装

1. 安装最新版的Tex Live。
2. 安装最新版的Pandoc。
4. 安装必需的字体。
5. 执行以下命令：

```
git clone https://github.com/94wgfk/helloworld.git
cd helloworld
make
```

## 使用

* `src/`文件夹下存放了多个文件夹，每个文件夹代表一个project也就是一篇论文，其中包含了生成一篇论文所需要的各种源文件。`thesis.md`为论文正文，`ref.bib`为引用的文献（使用bibtex，谷歌学术可以直接复制出bib格式的引用），`figures/`文件夹存放的是引用的图片。
* 使用时可以从`src/`中任意一个示例项目复制一份出来，并重新命名。
* 论文标题、姓名、专业、导师等基本信息，请修改`src/xxx/info.tex`
* 论文摘要，请修改`src/xxx/abstract.tex`
* 致谢信息，请修改`src/xxx/ack.tex`
* 编辑完之后，**执行`make xxx`命令即可构建pdf**，生成的pdf存放于`dist`文件夹下。

# 说明

## 致谢

感谢[@pyrocat101](https://github.com/pyrocat101)成为使用markdown写毕业论文的先驱者，本项目参考了其[hust-thesis-pandoc](https://github.com/Sicun/hust-thesis-pandoc)。

感谢[@xu-cheng](https://github.com/xu-cheng)提供的[华中科技大学毕业论文Latex模板](https://github.com/hust-latex/hustthesis)，本项目将其模板解包之后进行略微的修改而成。

## 测试环境

* debian Stretch
* pandoc 1.16.0.2
* XeTeX 3.14159265-2.6-0.99992 / BibTeX 0.99d (TeX Live 2015/Debian)

