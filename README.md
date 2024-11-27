Fujitsu Compiler Test Suite
===========================

This repository contains a test suite for C/C++/Fortran compilers developed by Fujitsu.

This test suite was originally developed for the proprietary Fujitsu C/C++/Fortran compilers. We Fujitsu would like to contribute it to [the LLVM community](https://llvm.org/) to advance the quality of Clang/Flang/LLVM. The LLVM community has [its own test suite](https://github.com/llvm/llvm-test-suite/). We plan to join this effort, but it may take time to have consensus in the community on how to integrate. To make the community able to reach our test suite early, we release it in this repository as "Fujitsu Compiler Test Suite".

Target Platform
---------------

Most test programs in this test suite will be able to run on many platforms (OS/CPU). However, because it was originally developed for Fujitsu C/C++/Fortran compilers, which target Linux/AArch64, it may contain test programs which don't run on platforms other than Linux/AArch64.

How to Use
----------

Please read [RUN.md](RUN.md) to use this test suite.

Known Issues
------------

Please see [KnownIssues Wiki page](https://github.com/fujitsu/compiler-test-suite/wiki/KnownIssues) for known issues.

License
-------

The Fujitsu Compiler Test Suite is licensed under [the Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0). It is slightly different from the one used in [the LLVM Project](https://github.com/llvm/llvm-project/) and [the LLVM test-suite](https://github.com/llvm/llvm-test-suite/) ([Apache License v2.0 with LLVM Exceptions](https://github.com/llvm/llvm-project/blob/main/LICENSE.TXT)) for internal reasons.

Contact
-------

email: contact-compiler-test-suite@cs.jp.fujitsu.com

Contribution
------------

[Bug reports are welcome](https://github.com/fujitsu/compiler-test-suite/issues/new).

We are sorry but we don't accept pull requests. As explained above, we plan to join the LLVM test-suite in the future, but the license is different. We'll switch the license when we join. To make it easy, we want to hold copyright of whole test suite. If you have any suggestions, please let us know them as [issues](https://github.com/fujitsu/compiler-test-suite/issues/new).

Current Status
--------------

As of the 2024-11 release, the Fujitsu Compiler Test Suite lacks following things. They will be available in the upcoming releases.

- Test programs for C++
- More test programs for C/Fortran
- Many missing reference output files (used to verify outputs from test programs)
