# Contributing to Fujitsu Compiler Test Suite

Thank you for your interest in contributing to **Fujitsu Compiler Test Suite**!  
This repository provides a collection of test cases for compiler validation.  
Currently maintained under [fujitsu/compiler-test-suite](https://github.com/fujitsu/compiler-test-suite), this project is planned to be integrated into the LLVM Project in the future.

## Contribution Workflow

1. **Fork and branch**
   - Fork this repository and create a feature branch from `main`.
   - Use a descriptive branch name, e.g., `fix-math-tests` or `add-loop-optimization-cases`.

2. **Make your changes**
   - Add new test cases or improve existing ones.
   - Keep tests minimal, self-contained, and clearly targeted at a specific compiler feature or bug.  

3. **Run checks locally**
   - Ensure that your contribution does not break existing tests.
   - Provide clear instructions if your test requires special setup.
   - Make sure that the expected results of your tests are clear and understandable.

4. **Submit a Pull Request**
   - Open a Pull Request (PR) against the `main` branch.
   - Clearly describe:
     - Purpose of the change
     - Category of tests (e.g., C, C++, Fortran, optimization, diagnostics)
     - Any references to standards or specifications

   For details on creating, updating, and rebasing pull requests, see the following sections in the LLVM Project documentation (https://llvm.org/docs/GitHub.html):
   - [Creating Pull Requests](https://llvm.org/docs/GitHub.html#creating-pull-requests)
   - [Updating Pull Requests](https://llvm.org/docs/GitHub.html#updating-pull-requests)
   - [Rebasing Pull Requests and Force Pushes](https://llvm.org/docs/GitHub.html#rebasing-pull-requests-and-force-pushes)

## Code of Conduct

This project follows the principles of the [LLVM Community Code of Conduct](https://llvm.org/docs/CodeOfConduct.html).  
Please be respectful and constructive in all interactions.

## Licensing

- As of accepting external contributions, this repository uses the **Apache License v2.0 with LLVM Exceptions**, identical to the LLVM Project’s license.  
- By submitting a contribution, you agree that your code and test cases will be distributed under these terms.  

## Developer Certificate of Origin (DCO) / Contributor License Agreement (CLA)

- Similar to the LLVM Project, this project **does not require DCO or CLA** for contributions.  
- Contributors retain the copyright to their submitted code.  
- However, all contributions must comply with the repository license terms (Apache License v2.0 with LLVM Exceptions).  
- **Do not include code copied or derived from other programs or projects**, unless it is clearly permitted by the license and explicitly documented. All contributions must be original work suitable for upstreaming to LLVM test-suite.

## Future Migration to LLVM

- This repository is intended to be integrated into the LLVM Project (LLVM test-suite) in the future.  
- Once migration occurs, contributions will follow the **[LLVM Developer Policy](https://llvm.org/docs/DeveloperPolicy.html)** and other official LLVM contribution guidelines.  
- Contributors should keep this in mind when preparing test cases (e.g., style, scope, and relevance).

## Questions / Support

- Open a GitHub Issue for discussion before submitting large or controversial changes. Suggestions and proposals are also welcome.  
- For general LLVM-related questions, refer to the [LLVM community resources](https://llvm.org/docs/).
  