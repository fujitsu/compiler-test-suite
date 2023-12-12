  program mod30410
  print *, "OK"
  end program

  module base
    interface h
      pure integer function v(i)
        intent(in) :: i
      end function
    end interface
  end module


  module m1
    use base
    integer :: x
  end module

  subroutine s1_1()
    use m1,only:x
  end subroutine

  subroutine s1_2()
    use m1,only:h
  end subroutine

  subroutine s1_3()
    use m1,only:v
  end subroutine

  subroutine s1_4()
    use m1,only:z=>x
  end subroutine

  subroutine s1_5()
    use m1,only:z=>h
  end subroutine

  subroutine s1_6()
    use m1,only:z=>v
  end subroutine


  module m2
    use base,w=>h
    integer :: x
  end module

  subroutine s2_1()
    use m2,only:x
  end subroutine

  subroutine s2_2()
    use m2,only:w
  end subroutine

  subroutine s2_3()
    use m2,only:v
  end subroutine

  subroutine s2_4()
    use m2,only:z=>x
  end subroutine

  subroutine s2_5()
    use m2,only:z=>w
  end subroutine

  subroutine s2_6()
    use m2,only:z=>v
  end subroutine


  module m2_2
    use base,w=>v
    integer :: x
  end module

  subroutine s2_2_1()
    use m2_2,only:x
  end subroutine

  subroutine s2_2_2()
    use m2_2,only:w
  end subroutine

  subroutine s2_2_3()
    use m2_2,only:h
  end subroutine

  subroutine s2_2_4()
    use m2_2,only:z=>x
  end subroutine

  subroutine s2_2_5()
    use m2_2,only:z=>w
  end subroutine

  subroutine s2_2_6()
    use m2_2,only:z=>h
  end subroutine


  module m3
    use base
    interface h
      pure integer function vv(a)
        real,intent(in) :: a
      end function
    end interface
  end module

  subroutine s3_1()
    use m3,only:vv
  end subroutine

  subroutine s3_2()
    use m3,only:h
  end subroutine

  subroutine s3_3()
    use m3,only:v
  end subroutine

  subroutine s3_4()
    use m3,only:z=>vv
  end subroutine

  subroutine s3_5()
    use m3,only:z=>h
  end subroutine

  subroutine s3_6()
    use m3,only:z=>v
  end subroutine


  module m4
    use base,w=>h
    interface w
      pure integer function vv(a)
        real,intent(in) :: a
      end function
    end interface
  end module

  subroutine s4_1()
    use m4,only:vv
  end subroutine

  subroutine s4_2()
    use m4,only:w
  end subroutine

  subroutine s4_3()
    use m4,only:v
  end subroutine

  subroutine s4_4()
    use m4,only:z=>vv
  end subroutine

  subroutine s4_5()
    use m4,only:z=>w
  end subroutine

  subroutine s4_6()
    use m4,only:z=>v
  end subroutine


  module m5
    use base
    interface h
      pure integer function vv(a)
        real,intent(in) :: a
      end function
    end interface
  end module

  subroutine s5_1()
    use m5,only:h
  end subroutine

  subroutine s5_2()
    use m5,only:v
  end subroutine

  subroutine s5_3()
    use m5,only:vv
  end subroutine

  subroutine s5_4()
    use m5,only:z=>h
  end subroutine

  subroutine s5_5()
    use m5,only:z=>v
  end subroutine

  subroutine s5_6()
    use m5,only:z=>vv
  end subroutine


  module m6
    use base,w=>h
    interface w
      pure integer function vv(a)
        real,intent(in) :: a
      end function
    end interface
  end module

  subroutine s6_1()
    use m6,only:w
  end subroutine

  subroutine s6_2()
    use m6,only:v
  end subroutine

  subroutine s6_3()
    use m6,only:vv
  end subroutine

  subroutine s6_4()
    use m6,only:z=>w
  end subroutine

  subroutine s6_5()
    use m6,only:z=>v
  end subroutine

  subroutine s6_6()
    use m6,only:z=>vv
  end subroutine


  module m7
    use base
    contains
      integer function fun(a)
        character(h(1)) :: a
        fun = len(a)
      end function
  end module

  subroutine s7_1()
    use m7,only:fun
  end subroutine

  subroutine s7_2()
    use m7,only:h
  end subroutine

  subroutine s7_3()
    use m7,only:v
  end subroutine

  subroutine s7_4()
    use m7,only:z=>fun
  end subroutine

  subroutine s7_5()
    use m7,only:z=>h
  end subroutine

  subroutine s7_6()
    use m7,only:z=>v
  end subroutine


  module m8
    use base,w=>h
    contains
      integer function fun(a)
        character(w(1)) :: a
        fun = len(a)
      end function
  end module

  subroutine s8_1()
    use m8,only:fun
  end subroutine

  subroutine s8_2()
    use m8,only:w
  end subroutine

  subroutine s8_3()
    use m8,only:v
  end subroutine

  subroutine s8_4()
    use m8,only:z=>fun
  end subroutine

  subroutine s8_5()
    use m8,only:z=>w
  end subroutine

  subroutine s8_6()
    use m8,only:z=>v
  end subroutine


  module m9
    use base
    contains
      integer function fun(a)
        character(0) :: a
        fun = h(1) + len(a)
      end function
  end module

  subroutine s9_1()
    use m9,only:fun
  end subroutine

  subroutine s9_2()
    use m9,only:v
  end subroutine

  subroutine s9_3()
    use m9,only:h
  end subroutine

  subroutine s9_4()
    use m9,only:z=>fun
  end subroutine

  subroutine s9_5()
    use m9,only:z=>v
  end subroutine

  subroutine s9_6()
    use m9,only:z=>h
  end subroutine


  module m0
    use base,w=>h
    contains
      integer function fun(a)
        character(0) :: a
        fun = len(a) + w(1)
      end function
  end module

  subroutine s0_1()
    use m0,only:fun
  end subroutine

  subroutine s0_2()
    use m0,only:w
  end subroutine

  subroutine s0_3()
    use m0,only:v
  end subroutine

  subroutine s0_4()
    use m0,only:z=>fun
  end subroutine

  subroutine s0_5()
    use m0,only:z=>w
  end subroutine

  subroutine s0_6()
    use m0,only:z=>v
  end subroutine


  pure integer function v(i)
    intent(in) :: i
    v = 1 + i
  end function
