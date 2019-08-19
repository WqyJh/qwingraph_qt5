# qwingraph_patch

[![Build Status](https://travis-ci.org/WqyJh/qwingraph_qt5.svg?branch=master)](https://travis-ci.org/WqyJh/qwingraph_qt5)
[![license](https://img.shields.io/badge/LICENCE-GPLv2-brightgreen.svg)](https://raw.githubusercontent.com/WqyJh/qwingraph_qt5/master/LICENSE)


An patch porting qwingraph (wingraph written in qt4) to qt5.

[Qwingraph v1.10](qwingraph_src.zip) is an utilities for IDA to visualize graph.

This is the description from the official documentation.
> WinGraph_qt tool reads a textual and readable specification of a graph and
visualizes the graph. It layouts the graph using several heuristics as
reducing the number of crossings, minimizing the size of edges, centering of
nodes. The specification language of WinGraph_qt is GDL, Graph Description
Language.
> 
> WinGraph_qt is a port of the WinGraph32 tool which in turn is a port of the
VCG tool to MS Windows. Some functionality has been removed during the porting
process.

In short, if you want to draw flowcharts in IDA, you have to install it.

The compilation of Qwingraph with Qt4 in my computer was failed with messages like:
```bash
undefined reference to QApplication::QApplication(int&, char**, int)
```

After I searched many websites and failed with all of the solutions, I decide to compile it with Qt5.


## Usage

```bash
git clone https://github.com/WqyJh/qwingraph_qt5
cd qwingraph_qt5
sudo ./install.sh
```

## Supported Distributions

Run `test.sh` to check the environment.

If you see `test passed` or the exit code is `0` then it's a compatible environment;
if you see `test failed` or the exit code is `1` then is't an incompatible environment.

Tested and compatible environment:
- Debian 9
- Ubuntu 18.04, 16.04, 14.04
- Kali GNU/Linux Rolling