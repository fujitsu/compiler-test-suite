  module mod

    contains

    subroutine sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    integer,intent(inout) :: error

    integer,intent(inout),volatile :: m1

    integer,volatile,intent(inout) :: m2

    intent(inout) :: m3
    volatile :: m3

    intent(inout) :: m4
    integer,volatile :: m4

    integer,intent(inout) :: m5
    volatile :: m5

    integer,intent(inout) :: m6
    integer,volatile :: m6

    volatile :: m7
    intent(inout) :: m7

    integer,volatile :: m8
    intent(inout) :: m8

    volatile :: m9
    integer,intent(inout) :: m9

    integer,volatile :: ma
    integer,intent(inout) :: ma

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

    m1=0
    m2=9
    m3=8
    m4=7
    m5=6
    m6=5
    m7=4
    m8=3
    m9=2
    ma=1

    call sub(m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,error)

    if (error .ne. 0) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
