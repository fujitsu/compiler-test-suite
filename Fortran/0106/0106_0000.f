      program main
      character*1 a;
      call foo(a)
      print *, a
      end program main

      subroutine foo(a)
      character*9 s5_v
      character*1 a
      structure /y/
      character  yb0(2147483640)
      character  yb1(14)
      end structure
      record /y/ xx
      pointer (ii, xx)
      ii = loc(s5_v)-2147483640
      xx.yb1(7)='4'
      a = xx.yb1(7);
      end subroutine foo

