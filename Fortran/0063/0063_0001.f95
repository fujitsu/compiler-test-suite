  module m1
    integer,parameter :: c=4
  end module


  program test

  interface
    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
    end function

    integer(2) function f3() result(r3)
      character(kind=kind(r3)/2) :: z="a"
    end function

    integer(c) function f4() result(r4)
      use m1
      character(kind=kind(r4)/4) :: z="a"
    end function

    integer(2) recursive function f5() result(r5)
      character(kind=kind(r5)/2) :: z="a"
    end function

    integer(c) recursive function f6() result(r6)
      use m1
      character(kind=kind(r6)/4) :: z="a"
    end function
  end interface

  print *,"OK"

  end program test


  integer(2) function f1()
    character(kind=kind(f1)/2) :: z="a"
    z = z
    f1 = 1
  end function

  integer(c) function f2()
    use m1
    character(kind=kind(f2)/4) :: z="a"
    z = z
    f2 = 2
  end function

  integer(2) function f3() result(r3)
    character(kind=kind(r3)/2) :: z="a"
    z = z
    r3 = 3
  end function

  integer(c) function f4() result(r4)
    use m1
    character(kind=kind(r4)/4) :: z="a"
    z = z
    r4 = 4
  end function

  integer(2) recursive function f5() result(r5)
    character(kind=kind(r5)/2) :: z="a"
    z = z
    r5 = f5()
    r5 = 5
  end function

  integer(c) recursive function f6() result(r6)
    use m1
    character(kind=kind(r6)/4) :: z="a"
    z = z
    r6 = f6()
    r6 = 6
  end function


  module mod1
    integer,parameter :: c=8
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 3
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end module


  module mod2
    use m1
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 3
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end module


  module mod3
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      use m1
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 3
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      use m1
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end module


  integer(8) function fun1()
    integer,parameter :: c=8
    character(kind=kind(fun1)/8) :: z="a"
    z = z
    fun1 = 1
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun2()
    use m1
    fun2 = 2
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  function fun3()
    fun3 = 3
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      use m1
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      use m1
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      use m1
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  module i1
    use m1
    contains
  integer(8) function fun1()
    integer,parameter :: c=8
    character(kind=kind(fun1)/8) :: z="a"
    z = z
    fun1 = 1
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun2()
    use m1
    character(kind=kind(fun2)/4) :: z="a"
    z = z
    fun2 = 2
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun3()
    fun3 = 3
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function
  end module


  module i2
    integer,parameter :: c=8
    contains
  integer(2) function fun1()
    integer,parameter :: c=2
    character(kind=kind(fun1)/2) :: z="a"
    z = z
    fun1 = 1
    contains

    integer(1) function f1()
      character(kind=kind(f1)/1) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/2) :: z="a"
      z = z
      f3 = 2
    end function

    integer(1) function f4() result(r4)
      character(kind=kind(r4)/1) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/2) :: z="a"
      z = z
      r6 = 6
    end function

    integer(1) recursive function f7() result(r7)
      character(kind=kind(r7)/1) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/2) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun2()
    use m1
    character(kind=kind(fun2)/4) :: z="a"
    z = z
    fun2 = 2
    contains

    integer(1) function f1()
      character(kind=kind(f1)/1) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(1) function f4() result(r4)
      character(kind=kind(r4)/1) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(1) recursive function f7() result(r7)
      character(kind=kind(r7)/1) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun3()
    character(kind=kind(fun3)/8) :: z="a"
    z = z
    fun3 = 3
    contains

    integer(1) function f1()
      character(kind=kind(f1)/1) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 3
    end function

    integer(1) function f4() result(r4)
      character(kind=kind(r4)/1) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(1) recursive function f7() result(r7)
      character(kind=kind(r7)/1) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    integer(1) function f1()
      character(kind=kind(f1)/1) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 2
    end function

    integer(1) function f4() result(r4)
      character(kind=kind(r4)/1) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(1) recursive function f7() result(r7)
      character(kind=kind(r7)/1) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function
  end module


  module i3
    contains
  integer(8) function fun1()
    integer,parameter :: c=8
    character(kind=kind(fun1)/8) :: z="a"
    z = z
    fun1 = 1
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/8) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/8) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/8) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  integer(c) function fun2()
    use m1
    character(kind=kind(fun2)/4) :: z="a"
    z = z
    fun2 = 2
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    integer(2) function f1()
      character(kind=kind(f1)/2) :: z="a"
      z = z
      f1 = 1
    end function

    integer(c) function f2()
      use m1
      character(kind=kind(f2)/4) :: z="a"
      z = z
      f2 = 2
    end function

    integer(c) function f3()
      use m1
      character(kind=kind(f3)/4) :: z="a"
      z = z
      f3 = 2
    end function

    integer(2) function f4() result(r4)
      character(kind=kind(r4)/2) :: z="a"
      z = z
      r4 = 4
    end function

    integer(c) function f5() result(r5)
      use m1
      character(kind=kind(r5)/4) :: z="a"
      z = z
      r5 = 5
    end function

    integer(c) function f6() result(r6)
      use m1
      character(kind=kind(r6)/4) :: z="a"
      z = z
      r6 = 6
    end function

    integer(2) recursive function f7() result(r7)
      character(kind=kind(r7)/2) :: z="a"
      z = z
      r7 = f7()
      r7 = 7
    end function

    integer(c) recursive function f8() result(r8)
      use m1
      character(kind=kind(r8)/4) :: z="a"
      z = z
      r8 = f8()
      r8 = 8
    end function

    integer(c) recursive function f9() result(r9)
      use m1
      character(kind=kind(r9)/4) :: z="a"
      z = z
      r9 = f9()
      r9 = 9
    end function
  end function
  end module


  module x1
    use m1
    contains
      integer(c) function mx1f1()
        interface
          integer(2) function f1()
            integer,parameter :: c=2
            character(kind=kind(f1)/2) :: z="a"
          end function

          integer(c) function f2()
            use m1
            character(kind=kind(f2)/4) :: z="a"
          end function

          integer(2) function f3() result(r3)
            integer,parameter :: c=2
            character(kind=kind(r3)/2) :: z="a"
          end function

          integer(c) function f4() result(r4)
            use m1
            character(kind=kind(r4)/4) :: z="a"
          end function

          integer(2) recursive function f5() result(r5)
            integer,parameter :: c=2
            character(kind=kind(r5)/2) :: z="a"
          end function

          integer(c) recursive function f6() result(r6)
            use m1
            character(kind=kind(r6)/4) :: z="a"
          end function
        end interface
        mx1f1 = 1
      end function
  end module


