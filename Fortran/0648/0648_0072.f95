  module mod

    contains

    function fun1(error)

    integer,intent(in) :: error

    entry fun2(error)
    entry fun3(error)
    entry fun4(error)
    entry fun5(error)

    integer,volatile :: fun1
    integer,volatile :: fun2
    integer,volatile :: fun3
    integer,volatile :: fun4
    integer,volatile :: fun5
    integer,volatile :: fun6
    integer,volatile :: fun7
    integer,volatile :: fun8
    integer,volatile :: fun9
    integer,volatile :: funa

    entry fun6(error)
    entry fun7(error)
    entry fun8(error)
    entry fun9(error)
    entry funa(error)

    entry dummy(error) result(res)

    integer :: res

    res = error 

    end function
  end module

  program main

    use mod
    integer :: error = 0

    error = fun1(error)
    error = fun2(error)
    error = fun3(error)
    error = fun4(error)
    error = fun5(error)
    error = fun6(error)
    error = fun7(error)
    error = fun8(error)
    error = fun9(error)
    error = funa(error)

    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
