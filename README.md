# [doraemon-home.github.io](https://doraemon-home.github.io/)

[![](https://img.shields.io/badge/powered%20by-jekyll-red.svg)](https://jekyllrb.com)
[![](https://api.travis-ci.org/doraemon-home/doraemon-home.github.io.svg)](https://travis-ci.org/doraemon-home/doraemon-home.github.io)
![](https://stars-badge.herokuapp.com/doraemon-home/doraemon-home.github.io/last-pages-build.svg)

doraemon 团队 GitHub 官方首页。

## 我想给周刊投稿

* [投稿前必读](https://github.com/doraemon-home/doraemon-home.github.io#周刊创意收集)
* [投稿快捷通道](https://github.com/doraemon-home/weekly/issues)

## 安装

1. Clone

    ```
    $ git clone https://github.com/doraemon-home/doraemon-home.github.io.git
    ```

2. 初始化 Bundler

    ```
    $ bundle install
    ```

3. 本地运行

    ```
    $ sh cmd_preview.sh
    ```

    在 `http://localhost:4000` 进行预览。

## 对于编辑人员

### 目录结构

```
_posts/
    2018-01-22-build issue.md
    ...
_weekly/
    2018-01-22-weekly.md
    ...

```

* 博客：`_posts/`
* 周刊：周刊主体放在 `_weekly/`

### 创建周刊

可自行根据格式创建博客或者周刊。  
`shell`下执行文件`cmd_create_weekly.sh`会在目录`_weekly`下自动创建一个周刊文件如`2018-01-22-weekly.md`，

```
$ sh cmd_create_weekly.sh
```

### 周刊创意收集
可以在github上[创建issue](https://github.com/doraemon-home/doraemon-home.github.io/issues/new)，格式参考如下模板：

```
  - title:    "今日头条推荐算法原理全文详解"
    link:     "http://36kr.com/p/5114077.html"
    comment:  "如今，算法分发已经逐步成为信息平台、搜索引擎、浏览器、社交软件等几乎所有软件的标配，但同时也开始面临各种不同的质疑、挑战与误解。2018年1月，今日头条资深算法架构师曹欢欢博士，首次公开今日头条的算法原理，以期推动整个行业问诊算法、建言算法。通过让算法透明，来消除各界对算法的误解。"
    referrer: "doraemon-master"
    tags:    ["算法", "推荐算法"]
```


### 编辑周刊

周刊中的文章在 `_weekly/` 文件夹中的 `.md` 文件中保存，找到指定文件编辑即可。

可以在本地实时[预览效果](http://localhost:4000/weekly/2018-01-22-weekly.html)  

### 发布周刊

通过预览脚本可以实时生成发布所需的静态文件。

## 部署

网站基于 GitHub Pages，只需要 `git push` 到 `master` 就可以完成部署。

## License

* 网站程序相关部分使用 [MIT License](/LICENSE)
* 网站内容部分使用 [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/legalcode.txt)
