How to Run the Fujitsu Compiler Test Suite
==========================================

Welcome to the Fujitsu Compiler Test Suite! This document describes how to run the Fujitsu Compiler Test Suite.

The suite primarily targets LLVM (Clang/Flang). See [README.md](README.md) for supported platforms.

The Fujitsu Compiler Test Suite uses the infrastructure of [the LLVM test-suite](https://github.com/llvm/llvm-test-suite/). You need an environment to run it. The running procedure is the same as that of the LLVM test-suite (CMake, Ninja, and lit). [The test-suite Guide in the LLVM Project](https://llvm.org/docs/TestSuiteGuide.html) may be helpful if you have any questions.

Disk space requirements vary with the test suite version, configuration, and filesystem. In one measurement, the source trees required approximately 3 GB, and the build and test outputs required approximately 140 GB. See [Reducing disk usage](#reducing-disk-usage) for potential reductions and their limitations.

Preparation
-----------

The workflow consists of configuring the build with CMake, compiling the tests with Ninja, and running them with lit.

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

Here is one example of the installation procedure. Install any missing software; for example, use `cmake --version` to check whether CMake is available. In this example, only lit is installed in the Python virtual environment.

```shell
sudo apt install cmake ninja-build
python3 -m venv venv
. venv/bin/activate
pip3 install lit
git clone https://github.com/llvm/llvm-test-suite.git
```

Use `deactivate` to leave the virtual environment. Activate it again before running lit if lit was installed there.

Once the LLVM test-suite becomes runnable, clone the Fujitsu Compiler Test Suite into the LLVM test-suite's top directory, naming the directory `Fujitsu`.

```shell
cd llvm-test-suite
git clone https://github.com/fujitsu/compiler-test-suite.git Fujitsu
cd ..
```

Configuration
-------------

Create a build directory and use CMake to configure the LLVM test-suite. The options for CMake are almost the same as those for the LLVM test-suite.

There are two important options for the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_SUBDIRS=Fujitsu`**  
  The LLVM test-suite infrastructure provides a setting to select directories in which you want to run tests. You cloned the Fujitsu Compiler Test Suite with the directory name `Fujitsu`. By specifying this option, the LLVM test-suite infrastructure is configured to run only the Fujitsu Compiler Test Suite.
- **`-DTEST_SUITE_FORTRAN=ON`**  
  This option activates Fortran tests. If not specified, only C/C++ tests are run.

There are four options specific to the Fujitsu Compiler Test Suite.

- **`-DTEST_SUITE_FUJITSU_WITH_FAST_MATH=ON`**  
  If you compile tests with the `-ffast-math` option, specify this option.  
  The `-ffast-math` option introduces precision errors in floating-point arithmetic. This can result in false positive FAILs when comparing computation results with expected values. This option sets tolerances used by [the `fpcmp` tool](https://github.com/llvm/llvm-test-suite/blob/main/tools/fpcmp.c).  
  This option is not perfect. False positive FAILs can still occur due to legitimate precision errors that exceed the pre-configured tolerances.
- **`-DTEST_SUITE_FUJITSU_TEST_LANG=...`**  
  The Fujitsu Compiler Test Suite consists of test programs written in C, C++, and Fortran. By default, if `TEST_SUITE_FORTRAN` (see above) is `OFF`, C/C++ tests are run. If `TEST_SUITE_FORTRAN` is `ON`, C/C++/Fortran tests are run.  
  By setting this option, you can select the language to run. The value is a semicolon-separated list of `C`, `C++`, and `Fortran`. For example, if `-DTEST_SUITE_FUJITSU_TEST_LANG=C++;Fortran` is specified, only C++/Fortran tests are run. In this case, setting `TEST_SUITE_FORTRAN` is still needed.
- **`-DTEST_SUITE_FUJITSU_TEST_OPENMP={ON|OFF|ONLY}`**  
  The Fujitsu Compiler Test Suite includes OpenMP tests. This option controls enabling/disabling OpenMP tests.
  * `ON` (default): If the compiler supports OpenMP, enable OpenMP tests. If not, disable OpenMP tests.
  * `OFF`: Disable OpenMP tests.
  * `ONLY`: Enable only OpenMP tests. Disable non-OpenMP tests.
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

In the measurement environment described below, configuration took approximately 20 minutes. The `O0.cmake` cache selects a Debug build. To omit Fortran debug information while retaining `-O0`, add `-DCMAKE_Fortran_FLAGS_DEBUG=-O0` to the CMake command. For other CMake options, see the [cmake(1)](https://cmake.org/cmake/help/latest/manual/cmake.1.html) and [cmake-variables(7)](https://cmake.org/cmake/help/latest/manual/cmake-variables.7.html) manuals.

Note that the Flang command `flang-new` was renamed to `flang` by the commit [06eb10dadf](https://github.com/llvm/llvm-project/commit/06eb10dadfaeaadc5d0d95d38bea4bfb5253e077) (2024-10-10). If you are using an older version of Flang, you need to specify `flang-new`.

Compilation
-----------

Build the tests using Ninja in the directory where CMake was executed.

By default, the build process will halt upon encountering a compilation error. You might want to specify the `-k 0` option to compiling the remaining test programs.

```shell
ninja -k 0
```

Compilation took approximately one hour in the measurement environment described below. The time depends on the configuration and available resources.

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

The target triple can be obtained with `clang -dumpmachine`; it typically has the form `<architecture>-<vendor>-<operating_system>-<abi>`. If lit was installed in a virtual environment, activate that environment before running it.

For example, `lit -j 4 -o results.json .` took approximately three hours with `-O0` in the measurement environment described below. A run built with `-O3 -ffast-math -flto` took approximately one hour; this configuration also requires `-DTEST_SUITE_FUJITSU_WITH_FAST_MATH=ON`. These timings are examples, not guarantees.

lit prints a summary like the following. The number of tests and failures depends on the compiler, platform, and test suite version.

```text
Testing Time: 2819.46s

Total Discovered Tests: 89090
 Passed      : 88849 (99.73%)
 Failed      :  217 (0.24%)
 Executable Missing:  24 (0.03%)
```

For a typical single-source test, a lit directive file and its source correspond as follows:

- Directive: `llvm-test-suite-build/Fujitsu/<LANG>/<TEST#>/Fujitsu-<LANG>-<TEST#>_<SEQ#>.test`
- Source: `llvm-test-suite/Fujitsu/<LANG>/<TEST#>/<TEST#>_<SEQ#>.<EXTENSION>`

Typical extensions are `c` for C, `cc` or `cpp` for C++, and `for`, `fpp`, `f`, `f90`, `f95`, `f03`, or `f08` for Fortran, including uppercase variants.

Reducing disk usage
-------------------

The following measurements show the disk usage of the build directory when running the full test suite in the [measurement environment](#measurement-environment), before applying the disk-saving measures described below:

| Build configuration | After configuration | After compilation | After testing | Increase during testing |
|---|---:|---:|---:|---:|
| No optimization (`-O0`) | 1.27 GB | 84.59 GB | 142.37 GB | 57.78 GB |
| Optimization (`-O3 -ffast-math` and other flags) | 1.30 GB | 77.13 GB | 130.12 GB | 52.99 GB |

### Disabling executable hash collection

During test execution, lit creates temporary `.stripped` copies of test executables to calculate their hash values. These copies are not needed if executable hashes are not required, for example, when not comparing executables with those from a previous test run.

Applying `scripts/disable-strip.patch` to the LLVM test-suite disables the default executable hash collection and prevents the associated `.stripped` files from being created during normal test runs. In one full test-suite run, this reduced disk usage by more than 50 GB; actual savings depend on the environment and test configuration.

### Removing executables and Fortran temporary files

The optional `scripts/remove_executables_and_fort_files.sh` script can remove generated files after testing. In the same measurement, using it together with the patch reduced the remaining footprint to approximately 7 GB. Results will vary. Save any needed results first: removing executables prevents test reruns until they are rebuilt.

The script requires an absolute target directory and a mode:

- `fort`: removes files matching `fort.[0-9]*`, `ioct144.f0[0-9]`, or `*.dat`; the path must contain `/Fortran/`.
- `exec`: removes extensionless ELF `DYN` files; the path must contain `/C/`, `/C++/`, or `/Fortran/`. This can include shared objects as well as PIE executables.

Inspect the target files before running the script; it does not provide a dry-run mode. Include the trailing slash when targeting a language directory. For example, from the directory containing `llvm-test-suite` and `llvm-test-suite-build`:

```shell
bash llvm-test-suite/Fujitsu/scripts/remove_executables_and_fort_files.sh "$PWD/llvm-test-suite-build/Fujitsu/Fortran/" fort
bash llvm-test-suite/Fujitsu/scripts/remove_executables_and_fort_files.sh "$PWD/llvm-test-suite-build/Fujitsu/C/" exec
```

Run the modes separately and repeat `exec` for other language directories as needed.

Measurement environment
-----------------------

The example measurements above used an H263-V60 server with two NVIDIA Grace CPUs (144 cores total), a Lustre filesystem, Clang and Flang 21.1.1, CMake 3.31.6, Ninja 1.10.2, and lit 18.1.8. The baseline used `-O0`.

Typical files and directories
-----------------------------

For a typical single-source test, the source tree contains:

- `llvm-test-suite/Fujitsu/<LANG>/<TEST#>/`: test sources and `.reference_output` files.

The build tree may contain:

- `llvm-test-suite-build/build.ninja`: Ninja build configuration.
- `llvm-test-suite-build/results.json`: lit results when using `-o results.json`.
- `llvm-test-suite-build/Fujitsu/<LANG>/<TEST#>/`: executables, `.test` directives, `.size` files, and links to reference outputs.
- `llvm-test-suite-build/Fujitsu/<LANG>/<TEST#>/Output/`: lit output, timing information, and generated run and verification scripts, when produced.
- `*.link.time`: link timing data when collected; `*.stripped`: temporary stripped executables used by the hash module.
