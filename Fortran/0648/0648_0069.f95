  module mod

    contains

    subroutine sub(error)

    integer,intent(inout) :: error

    integer,automatic,volatile :: m1

    integer,volatile,automatic :: m2

    automatic :: m3
    volatile :: m3

    automatic :: m4
    integer,volatile :: m4

    integer,automatic :: m5
    volatile :: m5

    integer,automatic :: m6
    integer,volatile :: m6

    volatile :: m7
    automatic :: m7

    integer,volatile :: m8
    automatic :: m8

    volatile :: m9
    integer,automatic :: m9

    integer,volatile :: ma
    integer,automatic :: ma

    m1 = 1
    m2 = 2
    m3 = 3
    m4 = 4
    m5 = 5
    m6 = 6
    m7 = 7
    m8 = 8
    m9 = 9
    ma = 0

    if (any ((/m1,m2,m3,m4,m5,m6,m7,m8,m9,ma/).ne.(/1,2,3,4,5,6,7,8,9,0/))) &
   &       then
      error = 1
    end if

    end subroutine
  end module

  program main

    use mod
    integer :: error = 0

    call sub(error)

    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
