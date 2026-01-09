How to Run the Fujitsu Compiler Test Suite
==========================================

Welcome to the Fujitsu Compiler Test Suite! This document describes how to run the Fujitsu Compiler Test Suite.

The Fujitsu Compiler Test Suite uses the infrastructure of [the LLVM test-suite](https://github.com/llvm/llvm-test-suite/). You need an environment to run it. The running procedure is the same as that of the LLVM test-suite (CMake, Ninja, and lit). [The test-suite Guide in the LLVM Project](https://llvm.org/docs/TestSuiteGuide.html) may be helpful if you have any questions.

Preparation
-----------

First, you need an environment to run the LLVM test-suite. Refer to [the test-suite Guide in the LLVM Project](https://llvm.org/docs/TestSuiteGuide.html). For your convenience, the required software is listed below.

- [CMake](https://cmake.org/)  
  CMake 3.27.0 or higher is required to test Flang.
- [Ninja](https://ninja-build.org/)  
  While build tools other than Ninja might be usable, they are not tested with this test suite.
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

Once the LLVM test-suite becomes runnable, clone the Fujitsu Compiler Test Suite into the LLVM test-suite's top directory, naming the directory `Fujitsu`.

```shell
cd llvm-test-suite
git clone https://github.com/fujitsu/compiler-test-suite.git Fujitsu
cd ..
```

Configuration
-------------

Create a build directory and use CMake to configure the LLVM test-suite. The options for CMake are almost the same as those for the LLVM test suite.

There are two important options for the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_SUBDIRS=Fujitsu`**  
  The LLVM test-suite infrastructure provides a setting to select directories in which you want to run tests. You cloned the Fujitsu Compiler Test Suite with the directory name `Fujitsu`. By specifying this option, the LLVM test-suite infrastructure is configured to run only the Fujitsu Compiler Test Suite.
- **`-DTEST_SUITE_FORTRAN=ON`**  
  This option activates Fortran tests. If not specified, only C/C++ tests are run.

There are three options specific to the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_FUJITSU_WITH_FAST_MATH=ON`**  
  If you compile tests with the `-ffast-math` option, specify this option.  
  The `-ffast-math` option introduces precision errors in floating-point arithmetic. This can result in false positive FAILs when comparing computation results with expected values. This option sets tolerances used by [the `fpcmp` tool](https://github.com/llvm/llvm-test-suite/blob/main/tools/fpcmp.c).  
  This option is not perfect. False positive FAILs can still occur due to legitimate precision errors that exceed the pre-configured tolerances.
- **`-DTEST_SUITE_FUJITSU_TEST_LANG=...`**  
  The Fujitsu Compiler Test Suite consists of test programs written in C, C++, and Fortran. By default, if `TEST_SUITE_FORTRAN` (see above) is `OFF`, C/C++ tests are run. If `TEST_SUITE_FORTRAN` is `ON`, C/C++/Fortran tests are run.  
  By setting this option, you can select the language to run. The value is a semicolon-separated list of `C`, `C++`, and `Fortran`. For example, if `-DTEST_SUITE_FUJITSU_TEST_LANG=C++;Fortran` is specified, only C++/Fortran tests are run. In this case, setting `TEST_SUITE_FORTRAN` is still needed.
- **`-DTEST_SUITE_FUJITSU_FORCE_UNSUPPORTED_PLATFORM=ON`**  
  The Fujitsu Compiler Test Suite itself is tested only on Linux/AArch64 and is only activated on that platform by default. If you want to try it on another platform, specify this option.

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

Note that the Flang command `flang-new` was renamed to `flang` by the commit [06eb10dadf](https://github.com/llvm/llvm-project/commit/06eb10dadfaeaadc5d0d95d38bea4bfb5253e077) (2024-10-10). If you are using an older version of Flang, you need to specify `flang-new`.

Compilation
-----------

Build the tests using Ninja in the directory where CMake was executed.

By default, the build process will halt upon encountering a compilation error. You might want to specify the `-k 0` option to compiling the remaining test programs.

```shell
ninja -k 0
```

Test
----

Run the tests using lit in the directory where CMake was executed.

The Fujitsu Compiler Test Suite includes OpenMP tests. You might need to set `LD_LIBRARY_PATH` to point the directory containing `libomp.so`.

By default, lit runs tests in parallel using all available CPUs. Some tests might consume a large amount of memory, which could result in an out-of-memory error. In such a case, you might want to specify the `-j NUMBER` option to reduce the risk of out-of-memory errors.

Tests that fail to compile are reported as `Executable Missing` on the standard output and as `NOEXE` in the result JSON file.

```shell
LD_LIBRARY_PATH=<path to llvm install>/lib/<target triple>:<path to llvm install>/lib
export LD_LIBRARY_PATH
lit -o results.json .
```
