  module mod
    integer,external:: fun1
    integer :: fun2
    external :: fun2,fun3
    integer :: fun3
    contains
      subroutine sub(i)
        integer :: i
        i = fun1()
        i = fun2()
        i = fun3()
      end subroutine
  end module

  program main
    use mod
    i = fun1()
    i = fun2()
    i = fun3()
    call sub(j)
    if (i == j) then
      print *," *** OK *** "
    else
      print *," +++ NG +++ "
    endif
  end program main

  function fun1()
    integer :: fun1
    fun1 = 111
  end function

  function fun2()
    integer :: fun2
    fun2 = 222
  end function

  function fun3()
    integer :: fun3
    fun3 = 333
  end function
