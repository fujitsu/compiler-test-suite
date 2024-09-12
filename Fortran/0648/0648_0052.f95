  module mod

    contains

    subroutine msub(a1)
      integer,value :: a1
      if (a1 .ne. 0) call errout
    end subroutine msub

    integer function mfun(a1)
      integer,value :: a1
      if (a1 .ne. 0) call errout
      mfun = a1
    end function mfun

  end module mod

  program main

    use mod

    interface
      subroutine esub(a1)
        integer,value,intent(in) :: a1
      end subroutine esub

      integer function efun(a1)
        integer,value,intent(in) :: a1
      end function efun
    end interface

    integer :: a1 = 0

    call msub(%val(a1))
    call esub(%val(a1))
    call isub(%val(a1))
    a1 = mfun(%val(a1))
    a1 = efun(%val(a1))
    a1 = ifun(%val(a1))

    print *," *** pass *** "

    contains

    subroutine isub(a1)
      integer,value :: a1
      if (a1 .ne. 0) call errout
    end subroutine isub

    integer function ifun(a1)
      integer,value :: a1
      if (a1 .ne. 0) call errout
      ifun = a1
    end function ifun

  end program main

  subroutine esub(a1)
        integer,value,intent(in) :: a1
    if (a1 .ne. 0) call errout
  end subroutine esub

  integer function efun(a1)
    integer,value,intent(in) :: a1
    if (a1 .ne. 0) call errout
    efun = a1
  end function efun

  subroutine errout()
    print *," +++ NG +++ "
  end subroutine
