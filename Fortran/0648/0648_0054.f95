  program main

    integer,external :: efun
    integer :: a1 = 0

    call esub(%val(a1))
    call esub( val(a1))
    a1 = efun(%val(a1))
    a1 = efun( val(a1))

    print *," *** pass *** "

  end program main

  subroutine esub(a1)
    integer,value :: a1
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
