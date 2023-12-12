  program mod30407
  print *, "OK"
  end program

  module base
    interface h
      module procedure v
    end interface
    contains
      pure integer function v()
        v = 1
      end function
  end module


  module m1
    use base
    integer :: x
  end module

  subroutine s1_1()
    use m1,only:x
  end subroutine

  subroutine s1_2()
    use m1,only:v
  end subroutine

  subroutine s1_3()
    use m1,only:z=>x
  end subroutine

  subroutine s1_4()
    use m1,only:z=>v
  end subroutine


  module m2
    use base,w=>v
    integer :: x
  end module

  subroutine s2_1()
    use m2,only:x
  end subroutine

  subroutine s2_2()
    use m2,only:w
  end subroutine

  subroutine s2_3()
    use m2,only:z=>x
  end subroutine

  subroutine s2_4()
    use m2,only:z=>w
  end subroutine


  module m3
    use base
    interface g
      module procedure v
    end interface
    integer :: x
  end module

  subroutine s3_1()
    use m3,only:x
  end subroutine

  subroutine s3_2()
    use m3,only:v
  end subroutine

  subroutine s3_3()
    use m3,only:z=>x
  end subroutine

  subroutine s3_4()
    use m3,only:z=>v
  end subroutine


  module m4
    use base,w=>v
    interface g
      module procedure w
    end interface
    integer :: x
  end module

  subroutine s4_1()
    use m4,only:x
  end subroutine

  subroutine s4_2()
    use m4,only:w
  end subroutine

  subroutine s4_3()
    use m4,only:z=>x
  end subroutine

  subroutine s4_4()
    use m4,only:z=>w
  end subroutine


  module m5
    use base
    interface g
      module procedure v
    end interface
  end module

  subroutine s5_1()
    use m5,only:g
  end subroutine

  subroutine s5_2()
    use m5,only:v
  end subroutine

  subroutine s5_3()
    use m5,only:z=>g
  end subroutine

  subroutine s5_4()
    use m5,only:z=>v
  end subroutine


  module m6
    use base,w=>v
    interface g
      module procedure w
    end interface
  end module

  subroutine s6_1()
    use m6,only:g
  end subroutine

  subroutine s6_2()
    use m6,only:w
  end subroutine

  subroutine s6_3()
    use m6,only:z=>g
  end subroutine

  subroutine s6_4()
    use m6,only:z=>w
  end subroutine


  module m7
    use base
    contains
      integer function fun(a)
        character(v()) :: a
        fun = len(a)
      end function
  end module

  subroutine s7_1()
    use m7,only:fun
  end subroutine

  subroutine s7_2()
    use m7,only:v
  end subroutine

  subroutine s7_3()
    use m7,only:z=>fun
  end subroutine

  subroutine s7_4()
    use m7,only:z=>v
  end subroutine


  module m8
    use base,w=>v
    contains
      integer function fun(a)
        character(w()) :: a
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
    use m8,only:z=>fun
  end subroutine

  subroutine s8_4()
    use m8,only:z=>w
  end subroutine


  module m9
    use base
    contains
      integer function fun(a)
        character(0) :: a
        fun = v() + len(a)
      end function
  end module

  subroutine s9_1()
    use m9,only:fun
  end subroutine

  subroutine s9_2()
    use m9,only:v
  end subroutine

  subroutine s9_3()
    use m9,only:z=>fun
  end subroutine

  subroutine s9_4()
    use m9,only:z=>v
  end subroutine


  module m0
    use base,w=>v
    contains
      integer function fun(a)
        character(0) :: a
        fun = len(a) + w()
      end function
  end module

  subroutine s0_1()
    use m0,only:fun
  end subroutine

  subroutine s0_2()
    use m0,only:w
  end subroutine

  subroutine s0_3()
    use m0,only:z=>fun
  end subroutine

  subroutine s0_4()
    use m0,only:z=>w
  end subroutine
