# Fujitsu Compiler Test Suite


This repository contains a test suite for C/C++/Fortran compilers developed by Fujitsu.

This test suite was originally developed for the proprietary Fujitsu C/C++/Fortran compilers. We would like to contribute it to [the LLVM community](https://llvm.org/) to advance the quality of Clang/Flang/LLVM. The LLVM community has [its own test suite](https://github.com/llvm/llvm-test-suite/). We plan to join this effort, but it may take time to have consensus in the community on how to integrate. To make the community able to reach our test suite early, we release it in this repository as "Fujitsu Compiler Test Suite".

## Target Platform

Most test programs in this test suite will be able to run on many platforms (OS/CPU). However, because it was originally developed for Fujitsu C/C++/Fortran compilers, which target Linux/AArch64, it may contain test programs which don't run on platforms other than Linux/AArch64.

## How to Use

Please read [RUN.md](RUN.md) to use this test suite.

## Known Issues

Please see [KnownIssues Wiki page](https://github.com/fujitsu/compiler-test-suite/wiki/KnownIssues) for known issues.

## License

From the 2025-09 release, the Fujitsu Compiler Test Suite is licensed under [the Apache License, Version 2.0 with LLVM Exceptions](https://github.com/llvm/llvm-project/blob/main/LICENSE.TXT), the same license as used in [the LLVM Project](https://github.com/llvm/llvm-project/). This change was made in anticipation of future integration with LLVM test-suite.


## Contribution

[Bug reports are welcome](https://github.com/fujitsu/compiler-test-suite/issues).

From the 2025-09 release, this test suite has started accepting pull requests. All contributions will be accepted under the same license as the LLVM Project: [Apache License Version 2.0 with LLVM Exceptions](https://github.com/llvm/llvm-project/blob/main/LICENSE.TXT).

Note: We are considering integrating this test suite into the [LLVM test-suite](https://github.com/llvm/llvm-test-suite) in the future. Please contribute only if you agree with this policy.

For details about contributing, please see [CONTRIBUTING.md](CONTRIBUTING.md).


## Known Issues and Future Plans

As of the 2025-11 release, the Fujitsu Compiler Test Suite lacks following things. They will be available in the upcoming releases.

- Addition of C/C++/Fortran test programs
- Many missing reference output files (used to verify outputs from test programs)
- Some tests have excessively long execution times
- Some tests consume large amounts of disk space


## Contact
For general communication, suggestions, or proposals, please open an issue on GitHub.  
If local/private communication is required, please contact us by email:  
contact-compiler-test-suite@cs.jp.fujitsu.com

