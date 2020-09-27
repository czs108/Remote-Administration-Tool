# Goasm-RAT

> This project has two original repositories:
>
> - https://github.com/czs108/Goasm-RAT/
> - https://github.com/lgw1995/Goasm-RAT/

## About The Project

***Goasm-RAT*** is a simple **Windows** console remote administration tool, written in *Go* and *Microsoft Assembly*. It supports remote *shell* and *screenshot* now.

## Getting Started

### Prerequisites

- Install [*MASM32*](http://www.masm32.com/).
- Install [*Go*](https://golang.org/).

### Building

#### Client

```powershell
..\client> .\build.ps1
```

#### Server

```powershell
..\server\scripts> .\build.ps1
```

## Usage

### Client

Use command line arguments to specify the IP address and *TCP* port of the server when running the client.

```powershell
client <ipv4-addr> <port>
```

### Server

Use `-p` option to specify the *TCP* listening port, the default port is **10080**.

```powershell
server -p <port>
```

Use `-h` option to print the help.

```powershell
-h    This help
-p int
      Listening port (default 10080)
```

#### Commands

When the server is waiting for user input, the background information or execution results will not be displayed in real-time. You need to press <kbd>Enter</kbd> to flush manually.

##### Basic Control

- `sw`

  Switch the client currently being controlled.

  ```powershell
  sw <client-id>
  ```

  For example:

  ```powershell
  > sw 1
  Sep 24 23:03:27: The current client has changed to [1].
  ```

- `exit`

  Exit the server.

  ```powershell
  exit
  ```

##### Shell

- `exec`

  Execute a shell command on the client.

  ```powershell
  exec <command>
  ```

  For example:

    ```powershell
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

- `sc`

  Take a screenshot of the client and save it as a `.png` file.

  ```powershell
  sc
  ```

## License

Distributed under the *GNU General Public* License. See `LICENSE` for more information.

## Contact

- ***Chenzs108***

  > ***GitHub***: https://github.com/czs108/
  >
  > ***E-Mail***: chenzs108@outlook.com
  >
  > ***WeChat***: chenzs108

- ***Liugw***

  > ***GitHub***: https://github.com/lgw1995/
  >
  > ***E-Mail***: liugw01@outlook.com