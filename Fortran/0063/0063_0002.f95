  module m1
    contains
    pure integer function pure()
      pure = 4
    end function
  end module


  pure integer function pure()
    pure = 8
  end function


  program test

    character :: v

  interface 
    pure integer function pure()
    end function

    character(8) function f1()
    end function

    character(4) function f2()
    end function

    character(8) function f3() result(r3)
    end function

    character(4) function f4() result(r4)
    end function

    recursive character(8) function f5() result(r5)
    end function

    recursive character(4) function f6() result(r6)
    end function

    character(8) function fun1()
    end function

    character(4) function fun2()
    end function

    character(1) function fun3()
    end function
  end interface

  v = f1() 
  v = f2()
  v = f3()
  v = f4()
  v = f5()
  v = f6()

  call submod1()
  call submod2()
  call submod3()

  v = fun1()
  v = fun2()
  v = fun3()

  call subi1()
  call subi2()
  call subi3()

  v = v

  print *,"OK"

  end program test

  character(pure()) function f1()
    interface
      pure integer function pure()
      end function
    end interface
    f1 = ""
    if (len(f1) /= 8) print * , "NG"
  end function

  character(pure()) function f2()
    use m1
    f2 = ""
    if (len(f2) /= 4) print * , "NG"
  end function

  character(pure()) function f3() result(r3)
    interface
      pure integer function pure()
      end function
    end interface
    r3 = ""
    if (len(r3) /= 8) print * , "NG "
  end function

  character(pure()) function f4() result(r4)
    use m1
    r4 = ""
    if (len(r4) /= 4) print * , "NG "
  end function

  character(pure()) recursive function f5() result(r5)
    interface
      pure integer function pure()
      end function
    end interface
    r5 = ""
    if (len(r5) /= 8) print * , "NG "
  end function

  character(pure()) recursive function f6() result(r6)
    use m1
    r6 = ""
    if (len(r6) /= 4) print * , "NG "
  end function


  module mod1
    contains

    pure integer function pure()
      pure = 2
    end function
    
    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 2) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 2) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 2) print * , "NG "
    end function
  end module


  subroutine submod1
    use mod1
    character :: v 
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
  end subroutine


  module mod2
    use m1
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
     if (len(r7) /= 8) print * , "NG "
     end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
     if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
     if (len(r9) /= 4) print * , "NG "
    end function
  end module


  subroutine submod2
    use mod2
    character :: v 
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
  end subroutine


  module mod3
    interface
      pure integer function pure()
      end function
    end interface
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end module


  subroutine submod3
    use mod3
    character :: v 
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
  end subroutine


  character(pure()) function fun1()
    interface
      pure integer function pure()
      end function
    end interface
    character :: v
    fun1 = ""
    if (len(fun1) /= 8) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end function


  character(pure()) function fun2()
    use m1
    character :: v
    fun2 = ""
    if (len(fun2) /= 4) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function


  character(1) function fun3()
    character :: v
    fun3 = ""
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      use m1
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      use m1
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      use m1
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function


  module i1
    use m1
    contains
  character(pure()) function fun1()
    interface
      pure integer function pure()
      end function
    end interface
    character :: v
    fun1 = ""
    if (len(fun1) /= 8) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end function


  character(pure()) function fun2()
    use m1
    character :: v
    fun2 = ""
    if (len(fun2) /= 4) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function


  character(pure()) function fun3()
    character :: v
    fun3 = ""
    if (len(fun3) /= 4) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function

  end module


  subroutine subi1()
    use i1
    character :: v
    v = fun1()
    v = fun2()
    v = fun3()
    v = v
  endsubroutine


  module i2
    interface
      pure integer function pure()
      end function
    end interface
    contains
  character(pure()) function fun1()
    interface
      pure integer function pure()
      end function
    end interface
    character :: v
    fun1 = ""
    if (len(fun1) /= 8) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end function


  character(pure()) function fun2()
    use m1
    character :: v
    fun2 = ""
    if (len(fun2) /= 4) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function


  character(pure()) function fun3()
    character :: v
    fun3 = ""
    if (len(fun3) /= 8) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end function

  end module


  subroutine subi2()
    use i2
    character :: v
    v = fun1()
    v = fun2()
    v = fun3()
    v = v
  endsubroutine


  module i3
    contains

    pure integer function pure()
      pure = 2
    end function

  character(pure()) function fun1()
    interface
      pure integer function pure()
      end function
    end interface
    character :: v
    fun1 = ""
    if (len(fun1) /= 8) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 8) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 8) print * , "NG "
    end function
  end function


  character(pure()) function fun2()
    use m1
    character :: v
    fun2 = ""
    if (len(fun2) /= 4) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 4) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 4) print * , "NG "
    end function
  end function


  character(pure()) function fun3()
    character :: v
    fun3 = ""
    if (len(fun3) /= 2) print * , "NG "
    v = f1()
    v = f2()
    v = f3()
    v = f4()
    v = f5()
    v = f6()
    v = f7()
    v = f8()
    v = f9()
    v = v
    contains

    character(pure()) function f1()
      interface
        pure integer function pure()
        end function
      end interface
      f1 = ""
      if (len(f1) /= 8) print * , "NG "
    end function

    character(pure()) function f2()
      use m1
      f2 = ""
      if (len(f2) /= 4) print * , "NG "
    end function

    character(pure()) function f3()
      f3 = ""
      if (len(f3) /= 2) print * , "NG "
    end function

    character(pure()) function f4() result(r4)
      interface
        pure integer function pure()
        end function
      end interface
      r4 = ""
      if (len(r4) /= 8) print * , "NG "
    end function

    character(pure()) function f5() result(r5)
      use m1
      r5 = ""
      if (len(r5) /= 4) print * , "NG "
    end function

    character(pure()) function f6() result(r6)
      r6 = ""
      if (len(r6) /= 2) print * , "NG "
    end function

    character(pure()) recursive function f7() result(r7)
      interface
        pure integer function pure()
        end function
      end interface
      r7 = ""
      if (len(r7) /= 8) print * , "NG "
    end function

    character(pure()) recursive function f8() result(r8)
      use m1
      r8 = ""
      if (len(r8) /= 4) print * , "NG "
    end function

    character(pure()) recursive function f9() result(r9)
      r9 = ""
      if (len(r9) /= 2) print * , "NG "
    end function
  end function

  end module


  subroutine subi3()
    use i3
    character :: v
    v = fun1()
    v = fun2()
    v = fun3()
    v = v
  endsubroutine
