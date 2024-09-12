  module mod

    contains

    subroutine sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    integer,intent(inout) :: error

    integer,volatile :: m1
    integer,volatile :: m2
    volatile :: m3
    integer,volatile :: m4
    volatile :: m5
    integer,volatile :: m6
    volatile :: m7
    integer,volatile :: m8
    volatile :: m9
    integer,volatile :: ma

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
