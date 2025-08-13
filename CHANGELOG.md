Changelog
=========
2025-08
-------

### Added
 
- Add the `TEST_SUITE_FUJITSU_WITH_FAST_MATH` CMake variable to reduce positive FAILs caused by precision errors in floating-point arithmetic. Please see `RUN.md` for details.

### Fixed

- Fix unexpected errors caused by parallel file read/write ([issue #2](https://github.com/fujitsu/compiler-test-suite/issues/2)).
- Fix uninitialized local variables in Fortran tests ([issue #24](https://github.com/fujitsu/compiler-test-suite/issues/24)).
- Reduce false positive FAILs caused by precision errors in floating-point arithmetic ([issue #4](https://github.com/fujitsu/compiler-test-suite/issues/4)).
- Reduce flaky tests ([issue #35](https://github.com/fujitsu/compiler-test-suite/issues/35)).
- Fix other bugs in the test programs. (including bugs reported by users and Flang CI)

### Removed

- Remove some test programs that is dependent on the processing-system.


2025-06
-------

### Added
 
- Add more test programs.

### Fixed

- Fix some bugs in the test programs.

### Removed

- Remove some test programs that is dependent on the processing-system.


2025-03
-------

### Added
 
- Add more test programs.

### Fixed
 
- Remove redundant files.
- Fix some bugs in the test programs.


2024-12
-------

### Fixed
 
- Remove redundant files.


2024-11
-------

### Added
 
- Add more test programs.


2024-10
-------

### Added
 
- Add more C test programs.


2024-09
-------

### Added
 
- Add more Fortran test programs.


2024-06
-------

### Changed

- Change the contact email address.

### Fixed

- Don't run tests which assume 512-bit SVE vector register length.
- Don't run tests in parallel if they write to a same file.
  * Before this fix, tests failed at random because of file I/O conflicts.
- Change the minimum required CMake version to 3.27.0 for Fortran tests.
  * Before this fix, `CMake cannot determine linker language for target` error was shown for `*.f03` and `*.f08` test files if you use CMake version lower than 3.27.0.
