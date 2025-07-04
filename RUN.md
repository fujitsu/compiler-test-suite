How to Run the Fujitsu Compiler Test Suite
==========================================

Welcome to the Fujitsu Compiler Test Suite! This document describes how to run the Fujitsu Compiler Test Suite.

The Fujitsu Compiler Test Suite uses the infrastructure of [the LLVM test-suite](https://github.com/llvm/llvm-test-suite/). You need an environment to run it. Running procedure is same as the LLVM test-suite (CMake, Ninja, and lit). [The test-suite Guide in the LLVM Project](https://llvm.org/docs/TestSuiteGuide.html) will help you if you have a question.

Preparation
-----------

First, you need an environment to run the LLVM test-suite. Read [the test-suite Guide in the LLVM Project](https://llvm.org/docs/TestSuiteGuide.html). Just to be sure, the required software is listed below.

- [CMake](https://cmake.org/)  
  CMake 3.27.0 or higher is required to test Flang.
- [Ninja](https://ninja-build.org/)  
  Build tools other than Ninja may be able to be used, but they are not tested.
- [lit](https://llvm.org/docs/CommandGuide/lit.html)  
  The command name is `lit` or `llvm-lit`, depending on your installation method.
- [LLVM test-suite](https://github.com/llvm/llvm-test-suite/)
- Clang/Flang/LLVM (test target compilers)  
  Flang is not required if you won't test Flang.

Here is one example of the installation procedure.

```shell
sudo apt install cmake ninja-build
python3 -m venv venv
. venv/bin/activate
pip3 install lit
git clone https://github.com/llvm/llvm-test-suite.git
```

Once LLVM test-suite becomes runnable, clone the Fujitsu Compiler Test Suite into the LLVM test-suite top directory with the directory name `Fujitsu`.

```shell
cd llvm-test-suite
git clone https://github.com/fujitsu/compiler-test-suite.git Fujitsu
cd ..
```

Configuration
-------------

Create a build directory and use CMake to configure the LLVM test-suite. Options to CMake are almost same as the LLVM test-suite.

There are two important options for the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_SUBDIRS=Fujitsu`**  
  The LLVM test-suite infrastructure has a setting to select directories in which you want to run tests. You cloned the Fujitsu Compiler Test Suite with the directory name `Fujitsu`. By specifying this option, the LLVM test-suite infrastructure is configured to run only the Fujitsu Compiler Test Suite.
- **`-DTEST_SUITE_FORTRAN=ON`**  
  This option activates Fortran tests. If not specified, only C/C++ tests are run.

There are two options specific to the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_FUJITSU_WITH_FAST_MATH=ON`**  
  If you compile tests with the `-ffast-math` option, specify this option.  
  The `-ffast-math` option introduces precision errors in floating-point arithmetic. This can result in false positive FAILs when comparing computation results with expected values. This option sets tolerances used by [the `fpcmp` tool](https://github.com/llvm/llvm-test-suite/blob/main/tools/fpcmp.c).  
  This option is not perfect. False positive FAILs can still occur due to legitimate precision errors that exceed the pre-configured tolerances.

- **`-DTEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM=ON`**  
  The Fujitsu Compiler Test Suite itself is tested only on Linux/AArch64 and activated only on the platform. If you want to try on another platform, specify this option.

```shell
mkdir llvm-test-suite-build
cd llvm-test-suite-build
cmake -GNinja \
      -DCMAKE_C_COMPILER=<path to llvm build>/bin/clang \
      -DCMAKE_Fortran_COMPILER=<path to llvm build>/bin/flang \
      -DTEST_SUITE_SUBDIRS=Fujitsu \
      -DTEST_SUITE_FORTRAN=ON \
      -C../llvm-test-suite/cmake/caches/O0.cmake \
      ../llvm-test-suite
```

Note that the Flang command `flang-new` is renamed to `flang` by the commit [06eb10dadf](https://github.com/llvm/llvm-project/commit/06eb10dadfaeaadc5d0d95d38bea4bfb5253e077) (2024-10-10). If you use an older Flang, you need to specify `flang-new`.

Compilation
-----------

Build tests using Ninja in the directory where CMake is executed.

By default, the build stops when a compilation error occurs. You may want to specify `-k 0` option to continue compilation of remaining test programs.

```shell
ninja -k 0
```

Test
----

Run tests using lit in the directory where CMake is executed.

The Fujitsu Compiler Test Suite includes OpenMP tests. You may need to set `LD_LIBRARY_PATH` to point a directory where `libomp.so` exists.

By default, lit runs tests in parallel using all available CPUs. There may be tests which consume large memory and it may result in an out-of-memory error. In such a case, you may want to specify `-j NUMBER` option to reduce risk of out-of-memory.

Tests which failed to compile are reported as `Executable Missing` on the standard output and as `NOEXE` in the result JSON file.

```shell
LD_LIBRARY_PATH=<path to llvm install>/lib/<target triple>:<path to llvm install>/lib
export LD_LIBRARY_PATH
lit -o results.json .
```
