  module mod

    contains

    subroutine sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    integer,intent(inout) :: error

    integer,intent(out),volatile :: m1

    integer,volatile,intent(out) :: m2

    intent(out) :: m3
    volatile :: m3

    intent(out) :: m4
    integer,volatile :: m4

    integer,intent(out) :: m5
    volatile :: m5

    integer,intent(out) :: m6
    integer,volatile :: m6

    volatile :: m7
    intent(out) :: m7

    integer,volatile :: m8
    intent(out) :: m8

    volatile :: m9
    integer,intent(out) :: m9

    integer,volatile :: ma
    integer,intent(out) :: ma

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

    integer :: m1,m2,m3,m4,m5,m6,m7,m8,m9,ma

    call sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
