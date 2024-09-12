  module mod1
    integer :: a=1,b=2
  end module

  module mod2
    use mod1
  end module

  program main
    use mod2,only : bb=>b
    use mod1,only : aa=>a

    if (aa==bb/2) then
      print *, " *** pass *** "
    else
      print *, " +++ pass +++ "
    end if

  end program main
