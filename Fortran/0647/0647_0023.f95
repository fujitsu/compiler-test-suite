  program main

    external :: fun
    intrinsic :: int

    integer fun

    integer :: error = 0

    if (fun(3.5) /= int(3.5)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  integer function fun(arg)
    intent(IN) :: arg
    intrinsic int
    fun = int(arg)
  end function
