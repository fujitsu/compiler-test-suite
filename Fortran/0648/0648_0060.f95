  module mod

    integer,dimension(-1:-1),volatile :: m1

    integer,volatile,dimension(-2:-2) :: m2

    dimension :: m3(-3:-3)
    volatile :: m3

    dimension :: m4(-4:-4)
    integer,volatile :: m4

    integer,dimension(-5:-5) :: m5
    volatile :: m5

    integer,dimension(-6:-6) :: m6
    integer,volatile :: m6

    volatile :: m7
    dimension :: m7(-7:-7)

    integer,volatile :: m8
    dimension :: m8(-8:-8)

    volatile :: m9
    integer,dimension(-9:-9) :: m9

    integer,volatile :: ma
    integer,dimension(-0:-0) :: ma

  end module

  program main

    use mod

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
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
