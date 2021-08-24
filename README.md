# Goasm-RAT

[![Go](badges/Go-1.15.svg)](https://golang.org)
![MASM](badges/MASM-8.svg)
[![Windows](badges/Microsoft-Windows.svg)](https://www.microsoft.com/en-ie/windows)
[![License](badges/License-GPL-3.0.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![DOI](https://zenodo.org/badge/281899771.svg)](https://zenodo.org/badge/latestdoi/281899771)

> This project has two original repositories:
>
> - https://github.com/czs108/Goasm-RAT
> - https://github.com/lgw1995/Goasm-RAT

## Languages

- [English](https://github.com/czs108/Goasm-RAT/blob/master/README.md)
- [简体中文](https://github.com/czs108/Goasm-RAT/blob/master/README-CN.md)

## About The Project

***Goasm-RAT*** is a simple **Windows** console remote administration tool, written in *Go* and *Microsoft Assembly*. It supports remote shell and screenshot now.

## Getting Started

### Prerequisites

- Install [*MASM32*](http://www.masm32.com).
- Install [*Go*](https://golang.org).

### Building

#### Client

```console
..\client> .\build.ps1
```

#### Server

```console
..\server\scripts> .\build.ps1
```

## Usage

### Client

Use command line arguments to specify the IP address and TCP port of the server when running the client.

```console
client <ipv4-addr> <port>
```

### Server

Use `-p` option to specify the TCP listening port, the default port is **10080**.

```console
server -p <port>
```

Use `-h` option to print the help.

```console
-h    This help
-p int
      Listening port (default 10080)
```

#### Commands

When the server is waiting for user input, the background information or execution results will not be displayed in real-time. You need to press <kbd>Enter</kbd> to flush manually.

##### Basic Control

- ```console
  sw <client-id>
  ```

  Switch the client currently being controlled.

  ```console
  > sw 1
  Sep 24 23:03:27: The current client has changed to [1].
  ```

- ```console
  exit
  ```

  Exit the server.

##### Shell

```console
exec <command>
```


Execute a shell command on the client.

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

##### Screenshot

```console
sc
```

Take a screenshot of the client and save it as a `.png` file.

## Bugs

The known bugs are marked by `BUG` in the comments.

## License

Distributed under the *GNU General Public License*. See `LICENSE` for more information.

## Citing

```tex
@software{chenzs108_2021_4698347,
  author       = {Chenzs108},
  title        = {czs108/Goasm-RAT: v1.0.0-beta},
  month        = apr,
  year         = 2021,
  publisher    = {Zenodo},
  version      = {v1.0.0-beta},
  doi          = {10.5281/zenodo.4698347},
  url          = {https://doi.org/10.5281/zenodo.4698347}
}
```

## Contact

- ***Chenzs108***

  > ***GitHub***: https://github.com/czs108
  >
  > ***E-Mail***: chenzs108@outlook.com
  >
  > ***WeChat***: chenzs108

- ***Liugw***

  > ***GitHub***: https://github.com/lgw1995
  >
  > ***E-Mail***: liu.guowen@outlook.com