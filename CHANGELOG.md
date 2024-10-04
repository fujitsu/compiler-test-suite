Changelog
=========

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
