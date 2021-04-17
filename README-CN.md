# Goasm-RAT

![Go](badges/Go-1.15-brightgreen.svg)
![ASM](badges/Microsoft-ASM-brightgreen.svg)
[![License](badges/License-GPL-3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)

> 该项目有两个原始仓库：
>
> - https://github.com/czs108/Goasm-RAT/
> - https://github.com/lgw1995/Goasm-RAT/

## 翻译

- [English](https://github.com/czs108/Goasm-RAT/blob/master/README.md)
- [简体中文](https://github.com/czs108/Goasm-RAT/blob/master/README-CN.md)

## 简介

***Goasm-RAT***是一款简单的**Windows**控制台远程控制工具，使用*Go*和*Microsoft Assembly*编写。目前支持远程*Shell*及屏幕截图功能。

## 开始

### 前置条件

- 安装[*MASM32*](http://www.masm32.com/)。
- 安装[*Go*](https://golang.org/)。

### 构建

#### 客户端

```console
..\client> .\build.ps1
```

#### 服务器

```console
..\server\scripts> .\build.ps1
```

## 使用

### 客户端

使用命令行参数指定服务器的IP地址及*TCP*端口号。

```bash
client <ipv4-addr> <port>
```

### 服务器

使用`-p`选项指定*TCP*监听端口，默认端口为**10080**。

```bash
server -p <port>
```

使用`-h`选项显示帮助信息。

```console
-h    This help
-p int
      Listening port (default 10080)
```

#### 命令

当服务器等待用户输入时，后台信息和命令执行结果并不会实时显示，需要使用<kbd>Enter</kbd>手动刷新。

##### 基础控制

- `sw`

  切换当前控制的客户端。

  ```bash
  sw <client-id>
  ```

  例如：

  ```console
  > sw 1
  Sep 24 23:03:27: The current client has changed to [1].
  ```

- `exit`

  退出服务器。

  ```bash
  exit
  ```

##### Shell

- `exec`

  在客户端执行*Shell*命令。

  ```bash
  exec <command>
  ```

  例如：

    ```console
  > exec whoami
  >
  Sep 25 00:21:38: Shell messages from the client [1]:
  ----------------------------------------------------
  whoami
  desktop-testpc1\chenzs

  C:\Users\chenzs\Goasm-RAT\client>
  ----------------------------------------------------
    ```

##### 屏幕截图

- `sc`

  截取客户端屏幕，保存为`.png`文件。

  ```bash
  sc
  ```

## Bugs

已知的Bug在代码注释中使用`BUG`标记。

## 许可证

使用*GNU General Public*协议，请参考`LICENSE`文件。

## 作者

- ***Chenzs108***

  > ***GitHub***: https://github.com/czs108/
  >
  > ***E-Mail***: chenzs108@outlook.com
  >
  > ***微信***: chenzs108

- ***Liugw***

  > ***GitHub***: https://github.com/lgw1995/
  >
  > ***E-Mail***: liugw01@outlook.com