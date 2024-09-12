  module mod

    contains

    subroutine sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    integer,intent(inout) :: error

    integer,value :: m1
    integer,value :: m2
    value :: m3
    value :: m4
    integer,value :: m5
    integer,value :: m6
    value :: m7
    value :: m8
    integer,value :: m9
    integer,value :: ma

    if (any ((/m1,m2,m3,m4,m5,m6,m7,m8,m9,ma/).ne.(/1,2,3,4,5,6,7,8,9,0/))) &
   &       then
      error = 1
    end if

    end subroutine
  end module

  program main

    use mod
    integer :: error = 0

    call sub(1,2,3,4,5,6,7,8,9,0,error)

    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
