  module m1
    type t1 ; sequence ; integer :: t1 ; end type
  end module


  program test

  interface
    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
    end function

    type(t1) function f2()
      use m1
    end function

    type(t1) function f3() result(r3)
      type t1 ; sequence ; integer :: t1 ; end type
    end function

    type(t1) function f4() result(r4)
      use m1
    end function

    type(t1) recursive function f5() result(r5)
      type t1 ; sequence ; integer :: t1 ; end type
    end function

    type(t1) recursive function f6() result(r6)
      use m1
    end function
  end interface

  print *,"OK"

  end program test


  type(t1) function f1()
    type t1 ; sequence ; integer :: t1 ; end type
    f1%t1 = 1
  end function

  type(t1) function f2()
    use m1
    f2%t1 = 2
  end function

  type(t1) function f3() result(r3)
    type t1 ; sequence ; integer :: t1 ; end type
    r3%t1 = 3
  end function

  type(t1) function f4() result(r4)
    use m1
    r4%t1 = 4
  end function

  type(t1) recursive function f5() result(r5)
    type t1 ; sequence ; integer :: t1 ; end type
    r5 = f5()
    r5%t1 = 5
  end function

  type(t1) recursive function f6() result(r6)
    use m1
    r6 = f6()
    r6%t1 = 6
  end function


  module mod1
    type t1 ; sequence ; integer :: mdt1 ; end type
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mdt1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mdt1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mdt1 = 9
    end function
  end module


  module mod2
    use m1
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end module


  module mod3
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      use m1
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      use m1
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      use m1
      r9 = f9()
      r9%t1 = 9
    end function
  end module


  type(t1) function fun1()
    type t1 ; sequence ; integer :: mdt1 ; end type
    fun1%mdt1 = 1
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mdt1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mdt1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mdt1 = 9
    end function
  end function


  type(t1) function fun2()
    use m1
    fun2%t1 = 2
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  function fun3()
    fun3 = 3
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      use m1
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      use m1
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      use m1
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  module i1
    use m1
    contains
  type(t1) function fun1()
    type t1 ; sequence ; integer :: mdt1 ; end type
    fun1%mdt1 = 1
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mdt1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mdt1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mdt1 = 9
    end function
  end function


  type(t1) function fun2()
    use m1
    fun2%t1 = 2
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  type(t1) function fun3()
    fun3%t1 = 3
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function
  end module


  module i2
    type t1 ; sequence ; integer :: mit1 ; end type
    contains
  type(t1) function fun1()
    type t1 ; sequence ; integer :: mdt1 ; end type
    fun1%mdt1 = 1
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mdt1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mdt1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mdt1 = 9
    end function
  end function


  type(t1) function fun2()
    use m1
    fun2%t1 = 2
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  type(t1) function fun3()
    fun3%mit1 = 3
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mit1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mit1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mit1 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mit1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mit1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mit1 = 9
    end function
  end function
  end module


  module i3
    contains
  type(t1) function fun1()
    type t1 ; sequence ; integer :: mdt1 ; end type
    fun1%mdt1 = 1
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%mdt1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%mdt1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%mdt1 = 9
    end function
  end function


  type(t1) function fun2()
    use m1
    fun2%t1 = 2
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      r9 = f9()
      r9%t1 = 9
    end function
  end function


  function fun4()
    fun4 = 4
    contains

    type(t1) function f1()
      type t1 ; sequence ; integer :: t1 ; end type
      f1%t1 = 1
    end function

    type(t1) function f2()
      use m1
      f2%t1 = 2
    end function

    type(t1) function f3()
      use m1
      f3%t1 = 2
    end function

    type(t1) function f4() result(r4)
      type t1 ; sequence ; integer :: t1 ; end type
      r4%t1 = 4
    end function

    type(t1) function f5() result(r5)
      use m1
      r5%t1 = 5
    end function

    type(t1) function f6() result(r6)
      use m1
      r6%t1 = 6
    end function

    type(t1) recursive function f7() result(r7)
      type t1 ; sequence ; integer :: t1 ; end type
      r7 = f7()
      r7%t1 = 7
    end function

    type(t1) recursive function f8() result(r8)
      use m1
      r8 = f8()
      r8%t1 = 8
    end function

    type(t1) recursive function f9() result(r9)
      use m1
      r9 = f9()
      r9%t1 = 9
    end function
  end function
  end module


  module x1
    use m1
    contains
      type(t1) function mx1f1()
        interface
          type(t1) function f1()
          type t1 ; sequence ; integer :: t1 ; end type
          end function

          type(t1) function f2()
            use m1
          end function

          type(t1) function f3() result(r3)
            type t1 ; sequence ; integer :: t1 ; end type
          end function

          type(t1) function f4() result(r4)
            use m1
          end function

          type(t1) recursive function f5() result(r5)
            type t1 ; sequence ; integer :: t1 ; end type
          end function

          type(t1) recursive function f6() result(r6)
            use m1
          end function
        end interface
        mx1f1%t1 = 1
      end function
  end module


