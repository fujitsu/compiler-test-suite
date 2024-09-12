  module mod

    integer,save,volatile :: m1

    integer,volatile,save :: m2

    save :: m3
    volatile :: m3

    save :: m4
    integer,volatile :: m4

    integer,save :: m5
    volatile :: m5

    integer,save :: m6
    integer,volatile :: m6

    volatile :: m7
    save :: m7

    integer,volatile :: m8
    save :: m8

    volatile :: m9
    integer,save :: m9

    integer,volatile :: ma
    integer,save :: ma

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
