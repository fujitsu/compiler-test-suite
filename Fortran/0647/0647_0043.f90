  module mod1
    integer :: a=1,b=2
  end module

  module mod2
    use mod1
  end module

  program main
    use mod2,only : b
    use mod1,only : a

    if (a==b/2) then
      print *, " *** pass *** "
    else
      print *, " +++ pass +++ "
    end if

  end program main
