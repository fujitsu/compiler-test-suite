  program mod30404
  print *, "OK"
  end program

  module base
    integer,external :: v
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
    character(0) :: x
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
    character(0) :: x
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
    contains
      integer function fun(a)
        character(0) :: a
        fun = v(a)
      end function
  end module

  subroutine s5_1()
    use m5,only:fun
  end subroutine

  subroutine s5_2()
    use m5,only:v
  end subroutine

  subroutine s5_3()
    use m5,only:z=>fun
  end subroutine

  subroutine s5_4()
    use m5,only:z=>v
  end subroutine


  module m6
    use base,w=>v
    contains
      integer function fun(a)
        character(0) :: a
        fun = w(a)
      end function
  end module

  subroutine s6_1()
    use m6,only:fun
  end subroutine

  subroutine s6_2()
    use m6,only:w
  end subroutine

  subroutine s6_3()
    use m6,only:z=>fun
  end subroutine

  subroutine s6_4()
    use m6,only:z=>w
  end subroutine


  integer function v(c)
    character(0) :: c
    v = 1+len(c)
  end function
